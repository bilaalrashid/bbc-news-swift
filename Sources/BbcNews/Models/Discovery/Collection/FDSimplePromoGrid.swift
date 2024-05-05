//
//  FDSimplePromoGrid.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 01/10/2023.
//

import Foundation

public struct FDSimplePromoGrid: FDCollection, Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `SimplePromoGrid`.
    internal let type: String
    public var storyPromos: [FDStoryPromo]

    public init(storyPromos: [FDStoryPromo]) {
        self.type = "SimplePromoGrid"
        self.storyPromos = storyPromos
    }

    private enum CodingKeys: String, CodingKey {
        case type, storyPromos = "items"
    }
}
