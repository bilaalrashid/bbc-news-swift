//
//  FDHeadlineByline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDDataMetadata: Codable, Equatable, Hashable {
    public var name: String
    public var allowAdvertising: Bool
    public var lastUpdated: Int
    public var shareUrl: String?

    public init(name: String, allowAdvertising: Bool, lastUpdated: Int, shareUrl: String? = nil) {
        self.name = name
        self.allowAdvertising = allowAdvertising
        self.lastUpdated = lastUpdated
        self.shareUrl = shareUrl
    }
}
