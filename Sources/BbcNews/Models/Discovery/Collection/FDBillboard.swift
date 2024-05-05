//
//  FDBillboard.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDBillboard: FDCollection, Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `Billboard`.
    internal let type: String
    public var storyPromos: [FDStoryPromo]

    public init(items: [FDStoryPromo]) {
        self.type = "Billboard"
        self.storyPromos = items
    }
}
