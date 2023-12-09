//
//  FDStoryPromo.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDStoryPromo: Codable, Equatable, Hashable {
    public let type: String
    public let style: String
    public let languageCode: String
    public let text: String?
    public let link: FDLink
    public let subtext: String?
    public let updated: Int?
    public let topic: FDTopic?
    public let image: FDImage?
    public let badges: [FDBadge]?
    public let uasToken: String?
}
