//
//  FDChipList.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A collection of topics that should be displayed as a chip list.
public struct FDChipList: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `ChipList`.
    internal let type: String

    /// The topics to be displayed in the list.
    public var topics: [FDTopic]

    /// Creates a new collection of topics to be displayed as a chip list.
    ///
    /// - Parameter topics: The topics to be displayed in the list.
    public init(topics: [FDTopic]) {
        self.type = "ChipList"
        self.topics = topics
    }

    private enum CodingKeys: String, CodingKey {
        case type, topics = "items"
    }
}
