//
//  FDHierarchicalCollection.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDHierarchicalCollection: FDCollection, Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `HierarchicalCollection`.
    internal let type: String
    public var storyPromos: [FDStoryPromo]

    public init(items: [FDStoryPromo]) {
        self.type = "HierarchicalCollection"
        self.storyPromos = items
    }
}
