//
//  FDMediaMetadata.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

/// Metadata descriptions of a media item.
public struct FDMediaMetadata: Codable, Equatable, Hashable {
    /// The title of the media item.
    public var title: String

    /// A summary description of the media item.
    public var summary: String?

    /// The caption to display with the media item.
    public var caption: String

    /// The caption with styling items.
    public var captionWithStyle: FDAttributedText?

    /// The 64-bit timestamp of the time the media item was last updated.
    public var timestamp: Date

    /// The guidance message for the video.
    public var guidanceMessage: String?

    /// A URL that displays content associated to the media item.
    @FailableCodable public var associatedContentUrl: URL?

    /// Is advertising allowed with the media item.
    public var allowAdvertising: Bool

    /// Creates a new description of metadata for a media item.
    ///
    /// - Parameters:
    ///   - title: The title of the media item.
    ///   - summary: A summary description of the media item.
    ///   - caption: The caption to display with the media item.
    ///   - captionWithStyle: The caption with styling items.
    ///   - timestamp: The 64-bit timestamp of the time the media item was last updated.
    ///   - guidanceMessage: The guidance message for the video.
    ///   - associatedContentUrl: A URL that displays content associated to the media item.
    ///   - allowAdvertising: Is advertising allowed with the media item.
    public init(
        title: String,
        summary: String? = nil,
        caption: String,
        captionWithStyle: FDAttributedText? = nil,
        timestamp: Date,
        guidanceMessage: String? = nil,
        associatedContentUrl: URL? = nil,
        allowAdvertising: Bool
    ) {
        self.title = title
        self.summary = summary
        self.caption = caption
        self.captionWithStyle = captionWithStyle
        self.timestamp = timestamp
        self.guidanceMessage = guidanceMessage
        self.associatedContentUrl = associatedContentUrl
        self.allowAdvertising = allowAdvertising
    }
}
