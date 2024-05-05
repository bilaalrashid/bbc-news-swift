//
//  FDSimplePromoGrid.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 01/10/2023.
//

import Foundation

public struct FDSimplePromoGrid: FDCollection, Codable, Equatable, Hashable {
    public var type: String
    public var items: [FDStoryPromo]

    public init(type: String, items: [FDStoryPromo]) {
        self.type = type
        self.items = items
    }
}
