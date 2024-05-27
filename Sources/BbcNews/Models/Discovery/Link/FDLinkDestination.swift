//
//  FDLinkDestination.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

/// A destination of a link.
public struct FDLinkDestination: Codable, Equatable, Hashable {
    /// The format of the destination.
    public var sourceFormat: FDSourceFormat

    /// The URL being linked to.
    public var url: String

    /// The id of the destination being linked to.
    ///
    /// This may sometimes be the same as `url`.
    public var id: String

    /// A description of how the destination should be presented.
    public var presentation: FDPresentation

    /// Creates a new destination for a link.
    ///
    /// - Parameters:
    ///   - sourceFormat: The format of the destination.
    ///   - url: The URL being linked to.
    ///   - id: The id of the destination being linked to.
    ///   - presentation: A description of how the destination should be presented.
    public init(sourceFormat: FDSourceFormat, url: String, id: String, presentation: FDPresentation) {
        self.sourceFormat = sourceFormat
        self.url = url
        self.id = id
        self.presentation = presentation
    }

    /// Returns the URL for sharing the link destination.
    public var shareUrl: URL? {
        switch self.sourceFormat {
        case .abl:
            // Some articles in the pre-7 API version return the full URL in the `id` property
            // swiftlint:disable:next force_https
            if self.id.hasPrefix("http://") || self.id.hasPrefix("https://") {
                return URL(string: self.id)
            }

            // The ID will contain a leading slash, so we shouldn't include one ourself in the concatenation.
            return URL(string: "https://bbc.co.uk" + self.id)
        case .html:
            return URL(string: self.url)
        default:
            return nil
        }
    }
}
