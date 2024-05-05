//
//  FDContentList.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDContentList: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `ContentList`.
    internal let type: String
    public var ordering: String
    public var listItems: [FDTextContainerText]

    public init(ordering: String, listItems: [FDTextContainerText]) {
        self.type = "ContentList"
        self.ordering = ordering
        self.listItems = listItems
    }
}
