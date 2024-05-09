//
//  FDLinkDestination.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDLinkDestination: Codable, Equatable, Hashable {
    public var sourceFormat: String
    public var url: String
    public var id: String
    public var presentation: FDPresentation

    public init(sourceFormat: String, url: String, id: String, presentation: FDPresentation) {
        self.sourceFormat = sourceFormat
        self.url = url
        self.id = id
        self.presentation = presentation
    }

    /// Returns the URL for sharing the link destination.
    public var shareUrl: URL? {
        switch self.sourceFormat {
        case "ABL":
            // Some articles in the pre-7 API version return the full URL in the `id` property
            // swiftlint:disable:next force_https
            if self.id.hasPrefix("http://") || self.id.hasPrefix("https://") {
                return URL(string: self.id)
            }

            // The ID will contain a leading slash, so we shouldn't include one ourself in the concatenation.
            return URL(string: "https://bbc.co.uk" + self.id)
        case "HTML":
            return URL(string: self.url)
        default:
            return nil
        }
    }
}
