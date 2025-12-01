//
//  UnsplashService.swift
//  BucketClimb
//
//  Unsplash API를 통해 키워드 기반 이미지 검색
//

import Foundation
import UIKit

// MARK: - Unsplash API Response Models

struct UnsplashSearchResponse: Codable {
    let results: [UnsplashPhoto]
}

struct UnsplashPhoto: Codable {
    let id: String
    let urls: UnsplashURLs
    let user: UnsplashUser
}

struct UnsplashURLs: Codable {
    let raw: String
    let full: String
    let regular: String
    let small: String
    let thumb: String
}

struct UnsplashUser: Codable {
    let name: String
    let username: String
}

// MARK: - UnsplashService

class UnsplashService {
    static let shared = UnsplashService()

    // API 키는 Info.plist 또는 UserDefaults에서 로드
    private var accessKey: String {
        // 1. Info.plist에서 먼저 확인
        if let key = Bundle.main.object(forInfoDictionaryKey: "UNSPLASH_ACCESS_KEY") as? String,
           !key.isEmpty, key != "YOUR_UNSPLASH_API_KEY_HERE" {
            print("🔑 [UnsplashService] Info.plist에서 API 키 로드")
            return key
        }
        // 2. UserDefaults에서 확인 (런타임 설정용)
        if let key = UserDefaults.standard.string(forKey: "UnsplashAccessKey"),
           !key.isEmpty {
            print("🔑 [UnsplashService] UserDefaults에서 API 키 로드: \(key.prefix(10))...")
            return key
        }
        print("⚠️ [UnsplashService] API 키 없음!")
        return ""
    }

    private let baseURL = "https://api.unsplash.com"
    private let session: URLSession

    private init() {
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 15
        config.timeoutIntervalForResource = 30
        self.session = URLSession(configuration: config)
        print("🚀 [UnsplashService] 초기화됨")
    }

    /// API 키가 설정되어 있는지 확인
    var isConfigured: Bool {
        let configured = !accessKey.isEmpty
        print("🔐 [UnsplashService] isConfigured 체크: \(configured)")
        return configured
    }

    /// API 키 설정 (런타임)
    func setAccessKey(_ key: String) {
        print("🔑 [UnsplashService] setAccessKey 호출: \(key.prefix(10))...")
        UserDefaults.standard.set(key, forKey: "UnsplashAccessKey")
        UserDefaults.standard.synchronize()
        print("✅ [UnsplashService] API 키 저장 완료")
    }

    /// 키워드로 이미지 검색
    func searchPhotos(query: String, perPage: Int = 1) async throws -> [UnsplashPhoto] {
        guard isConfigured else {
            throw UnsplashError.notConfigured
        }

        // 키워드 정리: 언더스코어를 공백으로
        let cleanQuery = query
            .replacingOccurrences(of: "_", with: " ")
            .trimmingCharacters(in: .whitespaces)

        guard !cleanQuery.isEmpty else {
            throw UnsplashError.invalidQuery
        }

        var components = URLComponents(string: "\(baseURL)/search/photos")!
        components.queryItems = [
            URLQueryItem(name: "query", value: cleanQuery),
            URLQueryItem(name: "per_page", value: String(perPage)),
            URLQueryItem(name: "orientation", value: "landscape")
        ]

        guard let url = components.url else {
            throw UnsplashError.invalidURL
        }

        var request = URLRequest(url: url)
        request.setValue("Client-ID \(accessKey)", forHTTPHeaderField: "Authorization")

        let (data, response) = try await session.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw UnsplashError.invalidResponse
        }

        switch httpResponse.statusCode {
        case 200:
            let searchResponse = try JSONDecoder().decode(UnsplashSearchResponse.self, from: data)
            return searchResponse.results
        case 401:
            throw UnsplashError.unauthorized
        case 403:
            throw UnsplashError.rateLimited
        default:
            throw UnsplashError.httpError(httpResponse.statusCode)
        }
    }

    /// 이미지 URL에서 데이터 다운로드
    func downloadImage(from urlString: String, size: ImageSize = .regular) async throws -> Data {
        // Unsplash dynamic resizing 활용
        let sizedURL: String
        switch size {
        case .thumb:
            sizedURL = urlString + "&w=400&q=80"
        case .small:
            sizedURL = urlString + "&w=640&q=80"
        case .regular:
            sizedURL = urlString + "&w=1080&q=80"
        case .full:
            sizedURL = urlString
        }

        guard let url = URL(string: sizedURL) else {
            throw UnsplashError.invalidURL
        }

        let (data, response) = try await session.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw UnsplashError.downloadFailed
        }

        return data
    }

    enum ImageSize {
        case thumb   // 400px
        case small   // 640px
        case regular // 1080px
        case full    // 원본
    }
}

// MARK: - Errors

enum UnsplashError: LocalizedError {
    case notConfigured
    case invalidQuery
    case invalidURL
    case invalidResponse
    case unauthorized
    case rateLimited
    case httpError(Int)
    case downloadFailed

    var errorDescription: String? {
        switch self {
        case .notConfigured:
            return "Unsplash API 키가 설정되지 않았습니다"
        case .invalidQuery:
            return "검색어가 유효하지 않습니다"
        case .invalidURL:
            return "잘못된 URL입니다"
        case .invalidResponse:
            return "서버 응답이 올바르지 않습니다"
        case .unauthorized:
            return "API 키가 유효하지 않습니다"
        case .rateLimited:
            return "API 호출 한도를 초과했습니다"
        case .httpError(let code):
            return "HTTP 오류: \(code)"
        case .downloadFailed:
            return "이미지 다운로드에 실패했습니다"
        }
    }
}
