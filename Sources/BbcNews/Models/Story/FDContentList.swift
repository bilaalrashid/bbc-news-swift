//
//  FDContentList.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A list of text items.
public struct FDContentList: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `ContentList`.
    internal let type: String

    /// The type ordering type of the list.
    public var ordering: String

    /// The text items in the list.
    public var listItems: [FDAttributedText]
    
    /// Creates a new list of text items.
    ///
    /// - Parameters:
    ///   - ordering: The type ordering type of the list.
    ///   - listItems: The text items in the list.
    public init(ordering: String, listItems: [FDAttributedText]) {
        self.type = "ContentList"
        self.ordering = ordering
        self.listItems = listItems
    }
}
