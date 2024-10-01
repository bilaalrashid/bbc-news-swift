//
//  FDSimplePromoGrid.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 01/10/2023.
//

import Foundation

/// A collection of story promos that should be displayed as a grid.
public struct FDSimplePromoGrid: FDCollection, Codable, Equatable, Hashable, Sendable {
    /// Used for decoding `FDItem`. This is always `SimplePromoGrid`.
    internal let type: String

    /// The story promos to be displayed in the collection.
    public var storyPromos: [FDStoryPromo]

    /// Creates a new collection of story promos that should be displayed as a grid.
    ///
    /// - Parameter storyPromos: The story promos to be displayed in the collection.
    public init(storyPromos: [FDStoryPromo]) {
        self.type = "SimplePromoGrid"
        self.storyPromos = storyPromos
    }

    private enum CodingKeys: String, CodingKey {
        case type, storyPromos = "items"
    }
}
