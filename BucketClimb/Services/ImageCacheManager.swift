//
//  ImageCacheManager.swift
//  BucketClimb
//
//  로컬 파일 시스템에 이미지 캐싱
//

import Foundation
import UIKit

class ImageCacheManager {
    static let shared = ImageCacheManager()

    private let fileManager = FileManager.default
    private let cacheDirectory: URL

    // 메모리 캐시 (앱 실행 중 빠른 접근용)
    private var memoryCache = NSCache<NSString, UIImage>()

    private init() {
        // Documents/BucketImages/ 디렉토리 사용
        let documentsPath = fileManager.urls(for: .documentDirectory, in: .userDomainMask)[0]
        cacheDirectory = documentsPath.appendingPathComponent("BucketImages", isDirectory: true)

        // 디렉토리 생성
        try? fileManager.createDirectory(at: cacheDirectory, withIntermediateDirectories: true)

        // 메모리 캐시 설정
        memoryCache.countLimit = 50
        memoryCache.totalCostLimit = 50 * 1024 * 1024 // 50MB
    }

    // MARK: - Public Methods

    /// 캐시된 이미지 로드 (메모리 → 디스크 순서)
    func loadImage(forKey key: String) -> UIImage? {
        let cacheKey = sanitizeKey(key)

        // 1. 메모리 캐시 확인
        if let image = memoryCache.object(forKey: cacheKey as NSString) {
            return image
        }

        // 2. 디스크 캐시 확인
        let filePath = cacheDirectory.appendingPathComponent("\(cacheKey).jpg")
        if fileManager.fileExists(atPath: filePath.path),
           let data = try? Data(contentsOf: filePath),
           let image = UIImage(data: data) {
            // 메모리 캐시에도 저장
            memoryCache.setObject(image, forKey: cacheKey as NSString)
            return image
        }

        return nil
    }

    /// 이미지가 캐시되어 있는지 확인
    func isCached(forKey key: String) -> Bool {
        let cacheKey = sanitizeKey(key)

        // 메모리 캐시 확인
        if memoryCache.object(forKey: cacheKey as NSString) != nil {
            return true
        }

        // 디스크 캐시 확인
        let filePath = cacheDirectory.appendingPathComponent("\(cacheKey).jpg")
        return fileManager.fileExists(atPath: filePath.path)
    }

    /// 이미지 저장 (메모리 + 디스크)
    func saveImage(_ image: UIImage, forKey key: String) {
        let cacheKey = sanitizeKey(key)

        // 메모리 캐시에 저장
        memoryCache.setObject(image, forKey: cacheKey as NSString)

        // 디스크에 저장 (백그라운드)
        Task.detached(priority: .background) { [weak self] in
            guard let self = self else { return }
            let filePath = self.cacheDirectory.appendingPathComponent("\(cacheKey).jpg")
            if let data = image.jpegData(compressionQuality: 0.8) {
                try? data.write(to: filePath)
            }
        }
    }

    /// Data로 이미지 저장
    func saveImageData(_ data: Data, forKey key: String) {
        let cacheKey = sanitizeKey(key)

        // UIImage로 변환하여 메모리 캐시에 저장
        if let image = UIImage(data: data) {
            memoryCache.setObject(image, forKey: cacheKey as NSString)
        }

        // 디스크에 저장 (백그라운드)
        Task.detached(priority: .background) { [weak self] in
            guard let self = self else { return }
            let filePath = self.cacheDirectory.appendingPathComponent("\(cacheKey).jpg")
            try? data.write(to: filePath)
        }
    }

    /// 특정 이미지 캐시 삭제
    func removeImage(forKey key: String) {
        let cacheKey = sanitizeKey(key)

        // 메모리에서 제거
        memoryCache.removeObject(forKey: cacheKey as NSString)

        // 디스크에서 제거
        let filePath = cacheDirectory.appendingPathComponent("\(cacheKey).jpg")
        try? fileManager.removeItem(at: filePath)
    }

    /// 전체 캐시 삭제
    func clearAllCache() {
        // 메모리 캐시 클리어
        memoryCache.removeAllObjects()

        // 디스크 캐시 클리어
        if let files = try? fileManager.contentsOfDirectory(at: cacheDirectory, includingPropertiesForKeys: nil) {
            for file in files {
                try? fileManager.removeItem(at: file)
            }
        }
    }

    /// 캐시 크기 계산 (바이트)
    func cacheSize() -> Int64 {
        guard let files = try? fileManager.contentsOfDirectory(at: cacheDirectory, includingPropertiesForKeys: [.fileSizeKey]) else {
            return 0
        }

        var totalSize: Int64 = 0
        for file in files {
            if let attributes = try? fileManager.attributesOfItem(atPath: file.path),
               let size = attributes[.size] as? Int64 {
                totalSize += size
            }
        }
        return totalSize
    }

    /// 캐시 크기를 사람이 읽기 좋은 형태로 반환
    var formattedCacheSize: String {
        let bytes = cacheSize()
        let formatter = ByteCountFormatter()
        formatter.countStyle = .file
        return formatter.string(fromByteCount: bytes)
    }

    // MARK: - Private

    /// 파일명으로 사용할 수 있도록 키 정리
    private func sanitizeKey(_ key: String) -> String {
        let allowed = CharacterSet.alphanumerics.union(CharacterSet(charactersIn: "_-"))
        return key
            .replacingOccurrences(of: " ", with: "_")
            .unicodeScalars
            .filter { allowed.contains($0) }
            .map { String($0) }
            .joined()
            .lowercased()
    }
}
