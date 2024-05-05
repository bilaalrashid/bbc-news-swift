//
//  FDBillboard.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDBillboard: FDCollection, Codable, Equatable, Hashable {
    public var type: String
    public var items: [FDStoryPromo]

    public init(type: String, items: [FDStoryPromo]) {
        self.type = type
        self.items = items
    }
}
