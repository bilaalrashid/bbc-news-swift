//
//  FDTopic.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDTopic: Codable, Equatable, Hashable {
    public let text: String?
    public let title: String?
    public let link: FDLink?

    public init(text: String? = nil, title: String? = nil, link: FDLink? = nil) {
        self.text = text
        self.title = title
        self.link = link
    }
}
