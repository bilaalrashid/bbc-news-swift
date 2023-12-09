//
//  FDSimpleCollection.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDSimpleCollection: FDCollection, Codable, Equatable, Hashable {
    public let type: String
    public let items: [FDStoryPromo]

    public init(type: String, items: [FDStoryPromo]) {
        self.type = type
        self.items = items
    }
}
