//
//  FDCollectionHeader.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDCollectionHeader: Codable, Equatable, Hashable {
    public var type: String
    public var text: String
    public var link: FDLink?

    public init(type: String, text: String, link: FDLink? = nil) {
        self.type = type
        self.text = text
        self.link = link
    }
}
