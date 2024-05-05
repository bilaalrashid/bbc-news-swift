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
    public var items: [FDStoryPromo]

    public init(items: [FDStoryPromo]) {
        self.type = "SimplePromoGrid"
        self.items = items
    }
}
