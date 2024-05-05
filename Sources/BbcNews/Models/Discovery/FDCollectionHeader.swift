//
//  FDCollectionHeader.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDCollectionHeader: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `CollectionHeader`.
    internal let type: String
    public var text: String
    public var link: FDLink?

    public init(text: String, link: FDLink? = nil) {
        self.type = "CollectionHeader"
        self.text = text
        self.link = link
    }
}
