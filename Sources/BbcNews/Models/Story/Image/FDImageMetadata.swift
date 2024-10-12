//
//  FDImageMetadata.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

/// Metadata descriptions of an image.
public struct FDImageMetadata: Codable, Equatable, Hashable, Sendable {
    /// A textual description of an image, to be used as alternative text in place of the image.
    public var altText: String?

    /// A caption to display with the image.
    public var caption: String?

    /// A copyright attribution for the image.
    public var copyrightText: String?

    /// Metadata for an image.
    ///
    /// - Parameters:
    ///   - altText: A textual description of an image, to be used as alternative text in place of the image.
    ///   - caption: A caption to display with the image.
    ///   - copyrightText: A copyright attribution for the image.
    public init(altText: String? = nil, caption: String? = nil, copyrightText: String? = nil) {
        self.altText = altText
        self.caption = caption
        self.copyrightText = copyrightText
    }
}
