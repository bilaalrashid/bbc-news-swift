//
//  FDCollectionHeader.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A header for a story promo collection.
public struct FDCollectionHeader: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `CollectionHeader`.
    internal let type: String

    /// The text displayed in the header.
    public var text: String

    /// A link to a new page.
    public var link: FDLink?

    /// Creates a new header for a story promo collection.
    ///
    /// - Parameters:
    ///   - text: The text displayed in the header.
    ///   - link: A link to a new page.
    public init(text: String, link: FDLink? = nil) {
        self.type = "CollectionHeader"
        self.text = text
        self.link = link
    }
}
