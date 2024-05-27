//
//  FDBillboard.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A collection containing a single story promo that is displayed with the highest prominence at the top of a story discovery page.
public struct FDBillboard: FDCollection, Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `Billboard`.
    internal let type: String

    /// The story promo(s) to be displayed in the collection.
    public var storyPromos: [FDStoryPromo]

    /// Create a story promo collection to be displayed with the highest prominence at the top of a story discovery page.
    ///
    /// - Parameter storyPromos: The story promo(s) to be displayed in the collection.
    public init(storyPromos: [FDStoryPromo]) {
        self.type = "Billboard"
        self.storyPromos = storyPromos
    }

    private enum CodingKeys: String, CodingKey {
        case type, storyPromos = "items"
    }
}
