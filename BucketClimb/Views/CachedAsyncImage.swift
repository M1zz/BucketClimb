//
//  CachedAsyncImage.swift
//  BucketClimb
//
//  Unsplash API + 로컬 캐싱을 활용한 이미지 뷰
//

import SwiftUI

struct CachedAsyncImage<Placeholder: View>: View {
    let keyword: String
    let placeholder: () -> Placeholder

    @State private var image: UIImage?
    @State private var isLoading = false
    @State private var loadFailed = false

    private let cache = ImageCacheManager.shared
    private let unsplash = UnsplashService.shared

    init(keyword: String, @ViewBuilder placeholder: @escaping () -> Placeholder) {
        self.keyword = keyword
        self.placeholder = placeholder
    }

    var body: some View {
        Group {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } else if isLoading {
                placeholder()
                    .overlay {
                        ProgressView()
                            .tint(.white)
                    }
            } else {
                placeholder()
            }
        }
        .onAppear {
            loadImage()
        }
    }

    private func loadImage() {
        guard image == nil, !isLoading else { return }

        // 1. 캐시 확인
        if let cachedImage = cache.loadImage(forKey: keyword) {
            self.image = cachedImage
            return
        }

        // 2. API 설정 안 됨 → 폴백
        guard unsplash.isConfigured else {
            loadFailed = true
            return
        }

        // 3. Unsplash에서 로드
        isLoading = true

        Task {
            do {
                let photos = try await unsplash.searchPhotos(query: keyword)
                guard let photo = photos.first else {
                    await MainActor.run {
                        isLoading = false
                        loadFailed = true
                    }
                    return
                }

                let imageData = try await unsplash.downloadImage(from: photo.urls.raw, size: .regular)
                cache.saveImageData(imageData, forKey: keyword)

                await MainActor.run {
                    if let uiImage = UIImage(data: imageData) {
                        self.image = uiImage
                    }
                    isLoading = false
                }
            } catch {
                print("⚠️ Unsplash 이미지 로드 실패: \(error.localizedDescription)")
                await MainActor.run {
                    isLoading = false
                    loadFailed = true
                }
            }
        }
    }
}

// MARK: - Convenience Initializer

extension CachedAsyncImage where Placeholder == Color {
    init(keyword: String) {
        self.init(keyword: keyword) {
            Color.gray.opacity(0.3)
        }
    }
}

// MARK: - BucketBackgroundImage (PopularBucketCard용)

struct BucketBackgroundImage: View {
    let title: String
    let backgroundImage: String
    let fallbackImages: [String]

    @State private var displayImage: UIImage?
    @State private var isLoading = false
    @State private var imageLoadState: String = "init"

    private let cache = ImageCacheManager.shared
    private let unsplash = UnsplashService.shared

    init(title: String, backgroundImage: String, fallbackImages: [String] = ["default1", "default2", "default3", "default4", "default5"]) {
        self.title = title
        self.backgroundImage = backgroundImage
        self.fallbackImages = fallbackImages
        print("🏗️ [BucketBackgroundImage] init - title: \(title), backgroundImage: \(backgroundImage)")
    }

    var body: some View {
        let _ = print("🎨 [BucketBackgroundImage] body 호출 - title: \(title)")

        GeometryReader { geometry in
            let _ = print("📐 [BucketBackgroundImage] GeometryReader - size: \(geometry.size)")

            ZStack {
                if let image = displayImage {
                    Image(uiImage: image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                } else {
                    // fallback 이미지
                    fallbackImageView
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                }

                // 로딩 인디케이터 오버레이
                if isLoading {
                    ZStack {
                        // 반투명 배경
                        Color.black.opacity(0.4)

                        // 로딩 스피너 + 텍스트
                        VStack(spacing: 8) {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                                .scaleEffect(1.2)

                            Text("이미지 로딩중...")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        .padding(12)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.black.opacity(0.6))
                        )
                    }
                }
            }
        }
        .onAppear {
            print("👁️ [BucketBackgroundImage] onAppear - title: \(title), backgroundImage: \(backgroundImage)")
            loadImage()
        }
    }

    @ViewBuilder
    private var fallbackImageView: some View {
        let imageName = getFallbackImageName()
        if let uiImage = UIImage(named: imageName) {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
        } else {
            // 이미지가 없으면 색상으로 대체
            Color.gray.opacity(0.3)
        }
    }

    private func getFallbackImageName() -> String {
        guard !fallbackImages.isEmpty else {
            print("⚠️ [BucketBackgroundImage] fallbackImages가 비어있음!")
            return "default1"
        }
        let hash = abs(title.hashValue)
        let imageNumber = hash % fallbackImages.count
        return fallbackImages[imageNumber]
    }

    private func loadImage() {
        guard displayImage == nil, !isLoading else {
            print("🖼️ [BucketBackgroundImage] loadImage 스킵 - displayImage: \(displayImage != nil), isLoading: \(isLoading)")
            return
        }

        let cacheKey = backgroundImage
        print("🖼️ [BucketBackgroundImage] loadImage 시작 - cacheKey: \(cacheKey)")

        // 1. 로컬 에셋 확인
        if let assetImage = UIImage(named: backgroundImage) {
            print("✅ [BucketBackgroundImage] 로컬 에셋에서 로드: \(backgroundImage)")
            displayImage = assetImage
            imageLoadState = "asset"
            return
        }

        // 2. 캐시 확인
        if let cachedImage = cache.loadImage(forKey: cacheKey) {
            print("✅ [BucketBackgroundImage] 캐시에서 로드: \(cacheKey)")
            displayImage = cachedImage
            imageLoadState = "cache"
            return
        }

        // 3. API가 설정되지 않으면 폴백 사용
        guard unsplash.isConfigured else {
            print("⚠️ [BucketBackgroundImage] API 미설정 - fallback 사용")
            imageLoadState = "fallback-no-api"
            return
        }

        // 4. Unsplash에서 로드
        print("🌐 [BucketBackgroundImage] Unsplash API 호출 시작: \(cacheKey)")
        isLoading = true
        imageLoadState = "loading"

        Task {
            do {
                let searchQuery = backgroundImage
                    .replacingOccurrences(of: "_", with: " ")
                print("🔍 [BucketBackgroundImage] 검색어: \(searchQuery)")

                let photos = try await unsplash.searchPhotos(query: searchQuery)
                print("📷 [BucketBackgroundImage] 검색 결과: \(photos.count)개")

                guard let photo = photos.first else {
                    print("⚠️ [BucketBackgroundImage] 검색 결과 없음")
                    await MainActor.run {
                        isLoading = false
                        imageLoadState = "no-result"
                    }
                    return
                }

                print("⬇️ [BucketBackgroundImage] 이미지 다운로드 시작: \(photo.urls.regular)")
                let imageData = try await unsplash.downloadImage(from: photo.urls.raw, size: .regular)
                print("✅ [BucketBackgroundImage] 다운로드 완료: \(imageData.count) bytes")

                cache.saveImageData(imageData, forKey: cacheKey)

                await MainActor.run {
                    if let uiImage = UIImage(data: imageData) {
                        print("✅ [BucketBackgroundImage] UIImage 생성 성공")
                        displayImage = uiImage
                        imageLoadState = "loaded"
                    } else {
                        print("❌ [BucketBackgroundImage] UIImage 생성 실패")
                        imageLoadState = "decode-failed"
                    }
                    isLoading = false
                }
            } catch {
                print("❌ [BucketBackgroundImage] 에러: \(error.localizedDescription)")
                await MainActor.run {
                    isLoading = false
                    imageLoadState = "error: \(error.localizedDescription)"
                }
            }
        }
    }
}
