//
//  FDHeadlineByline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDDataMetadata: Codable, Equatable, Hashable {
    public let name: String
    public let allowAdvertising: Bool
    public let lastUpdated: Int
    public let shareUrl: String?

    public init(name: String, allowAdvertising: Bool, lastUpdated: Int, shareUrl: String? = nil) {
        self.name = name
        self.allowAdvertising = allowAdvertising
        self.lastUpdated = lastUpdated
        self.shareUrl = shareUrl
    }
}
