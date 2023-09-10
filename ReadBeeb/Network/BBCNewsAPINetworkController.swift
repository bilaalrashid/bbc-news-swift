//
//  BBCNewsAPINetworkController.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 27/08/2023.
//

import Foundation
import Alamofire

struct BBCNewsAPINetworkController {

    static let baseUri = "https://news-app.api.bbc.co.uk"

    static let session: Session = {
        let configuration = URLSessionConfiguration.af.default
        configuration.httpAdditionalHeaders = [
            // Pretend to be the BBC News app
            "User-Agent": "BBCNews/25339 (iPhone15,2; iOS 16.6) BBCHTTPClient/9.0.0"
        ]
        return Session(configuration: configuration)
    }()

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

    static func fetchFDUrl(url: String) async throws -> FDResult {
        let request = self.session.request(url).validate().serializingDecodable(FDResult.self)
        return try await request.value
    }

}
