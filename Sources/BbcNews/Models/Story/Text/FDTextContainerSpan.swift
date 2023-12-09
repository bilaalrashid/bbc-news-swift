//
//  FDTextContainerSpan.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

public struct FDTextContainerSpan: Codable, Equatable, Hashable {
    public let type: String
    public let startIndex: Int
    public let length: Int
    public let attribute: String?
    public let link: FDLink?

    public init(type: String, startIndex: Int, length: Int, attribute: String? = nil, link: FDLink? = nil) {
        self.type = type
        self.startIndex = startIndex
        self.length = length
        self.attribute = attribute
        self.link = link
    }
}
