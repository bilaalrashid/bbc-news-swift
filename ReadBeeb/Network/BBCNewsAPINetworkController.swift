//
//  BBCNewsAPINetworkController.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 27/08/2023.
//

import Foundation
import Alamofire
import OSLog
import UIKit

struct BBCNewsAPINetworkController {

    static let baseUri = "https://news-app.api.bbc.co.uk"

    static let session: Session = {
        let configuration = URLSessionConfiguration.af.default
        configuration.httpAdditionalHeaders = [
            // Pretend to be the BBC News app
            // Example: BBCNews/25339 (iPhone15,2; iOS 16.6) BBCHTTPClient/9.0.0
            "User-Agent": "BBCNews/25339 (\(UIDevice.current.modelIdentifier); \(UIDevice.current.systemName) \(UIDevice.current.systemVersion)) BBCHTTPClient/9.0.0"
        ]
        return Session(configuration: configuration)
    }()

    static func isAPIUrl(url: String) -> Bool {
        guard let baseHostname = URL(string: self.baseUri)?.host else { return false }
        guard let hostname = URL(string: url)?.host else { return false }
        return hostname == baseHostname
    }

    /// Fetches the data for the BBC News home tab
    /// - Parameter postcode: The first part of the user's UK postcode e.g. W1A
    /// - Returns: The home tab data
    static func fetchDiscoveryPage(postcode: String? = nil) async throws -> FDResult {
        let url: String = {
            var url = self.baseUri + "/fd/abl?page=chrysalis_discovery&service=news&type=index&clientName=Chrysalis"
            if let postcode = postcode {
                url += "&clientLoc=" + postcode
            }
            return url
        }()

        return try await self.fetchFDUrl(url: url)
    }

    static func fetchStoryPromos(for topicIds: [String]) async throws -> [FDStoryPromo] {
        var storyPromos = Set<FDStoryPromo>()

        let topicResults = try await self.fetchTopicPages(for: topicIds)

        for result in topicResults {
            for item in result.data.structuredItems {
                switch item.body {
                case .billboard(let item):
                    storyPromos.formUnion(item.items)
                case .hierarchicalCollection(let item):
                    storyPromos.formUnion(item.items)
                case .collectionHeader(_):
                    break
                case .simpleCollection(let item):
                    storyPromos.formUnion(item.items)
                case .simplePromoGrid(let item):
                    storyPromos.formUnion(item.items)
                case .weatherPromoSummary(_):
                    break
                case .carousel(let item):
                    storyPromos.formUnion(item.items)
                case .chipList(_):
                    break
                case .copyright(_):
                    break
                case .media(_):
                    break
                case .videoPortraitStory(_):
                    break
                case .image(_):
                    break
                case .headline(_):
                    break
                case .textContainer(_):
                    break
                case .sectionHeader(_):
                    break
                case .contentList(_):
                    break
                case .storyPromo(let item):
                    storyPromos.insert(item)
                case .unknown:
                    break
                }
            }
        }

        return storyPromos.sorted {
            $0.updated ?? 0 > $1.updated ?? 0
        }
    }

    static func fetchTopicPages(for topicIds: [String]) async throws -> [FDResult] {
        var results = [FDResult]()

        for topicId in topicIds {
            results.append(try await self.fetchTopicPage(for: topicId))
        }

        return results
    }

    static func fetchTopicPage(for topicId: String) async throws -> FDResult {
        let url = self.baseUri + "/fd/abl?clientName=Chrysalis&clientVersion=pre-5&page=\(topicId)&type=topic"
        return try await self.fetchFDUrl(url: url)
    }

    static func fetchFDUrl(url: String) async throws -> FDResult {
        Logger.network.debug("Requesting: \(url, privacy: .public)")
        let request = self.session.request(url).validate().serializingDecodable(FDResult.self)
        return try await request.value
    }

}
