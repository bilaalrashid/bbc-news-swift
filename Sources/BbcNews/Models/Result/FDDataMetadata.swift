//
//  FDHeadlineByline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

/// The metadata of a page of results returned by the BBC News API.
public struct FDDataMetadata: Codable, Equatable, Hashable {
    /// The name of the page to display to the user.
    public var name: String

    /// If the page allows advertising to be displayed.
    public var allowAdvertising: Bool

    /// The 64-bit timestamp of the last time the page was updated.
    ///
    /// This is always `0` for story discovery pages.
    public var lastUpdated: Date

    /// The URL of a webpage displaying the same page returned by the API.
    public var shareUrl: String?

    /// Creates new page results metadata.
    ///
    /// - Parameters:
    ///   - name: The name of the page to display to the user.
    ///   - allowAdvertising: If the page allows advertising to be displayed.
    ///   - lastUpdated: The timestamp of the last time the page was updated.
    ///   - shareUrl: The URL of a webpage displaying the same returned by the API.
    public init(name: String, allowAdvertising: Bool, lastUpdated: Date, shareUrl: String? = nil) {
        self.name = name
        self.allowAdvertising = allowAdvertising
        self.lastUpdated = lastUpdated
        self.shareUrl = shareUrl
    }
}
