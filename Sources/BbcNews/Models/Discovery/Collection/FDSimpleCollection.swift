//
//  FDSimpleCollection.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDSimpleCollection: FDCollection, Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `SimpleCollection`.
    internal let type: String
    public var storyPromos: [FDStoryPromo]

    public init(storyPromos: [FDStoryPromo]) {
        self.type = "SimpleCollection"
        self.storyPromos = storyPromos
    }

    private enum CodingKeys: String, CodingKey {
        case type, storyPromos = "items"
    }
}
