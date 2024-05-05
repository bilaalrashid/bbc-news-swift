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
    public var topics: [FDTopic]

    public init(topics: [FDTopic]) {
        self.type = "ChipList"
        self.topics = topics
    }

    private enum CodingKeys: String, CodingKey {
        case type, topics = "items"
    }
}
