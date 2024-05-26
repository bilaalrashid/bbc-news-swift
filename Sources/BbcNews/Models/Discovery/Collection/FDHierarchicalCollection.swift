//
//  FDHierarchicalCollection.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A collection of story promos that should be displayed with inflated prominence.
public struct FDHierarchicalCollection: FDCollection, Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `HierarchicalCollection`.
    internal let type: String

    /// The story promos to be displayed in the collection.
    public var storyPromos: [FDStoryPromo]
    
    /// Creates a new collection of story promos that should be displayed with inflated prominence.
    ///
    /// - Parameter storyPromos: The story promos to be displayed in the collection.
    public init(storyPromos: [FDStoryPromo]) {
        self.type = "HierarchicalCollection"
        self.storyPromos = storyPromos
    }

    private enum CodingKeys: String, CodingKey {
        case type, storyPromos = "items"
    }
}
