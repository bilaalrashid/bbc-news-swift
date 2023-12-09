//
//  FDHeadline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDHeadline: Codable, Equatable, Hashable {
    public let type: String
    public let text: String
    public let lastUpdated: Int
    public let byline: FDHeadlineByline?
    public let topic: FDTopic?
    public let languageCode: String
    public let readTimeMinutes: Int
}
