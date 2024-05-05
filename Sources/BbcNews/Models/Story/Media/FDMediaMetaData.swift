//
//  FDMediaMetadata.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDMediaMetadata: Codable, Equatable, Hashable {
    public var title: String
    public var summary: String?
    public var caption: String
    public var timestamp: Int
    public var associatedContentUrl: String
    public var allowAdvertising: Bool

    public init(
        title: String,
        summary: String? = nil,
        caption: String,
        timestamp: Int,
        associatedContentUrl: String,
        allowAdvertising: Bool
    ) {
        self.title = title
        self.summary = summary
        self.caption = caption
        self.timestamp = timestamp
        self.associatedContentUrl = associatedContentUrl
        self.allowAdvertising = allowAdvertising
    }
}
