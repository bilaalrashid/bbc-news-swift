//
//  FDChipList.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDChipList: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `ChipList`.
    internal let type: String
    public var items: [FDTopic]

    public init(items: [FDTopic]) {
        self.type = "ChipList"
        self.items = items
    }
}
