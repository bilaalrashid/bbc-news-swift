//
//  FDMediaSource.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

/// A remote source for a playable media item.
public struct FDMediaSource: Codable, Equatable, Hashable {
    /// The type of the media.
    public var type: FDMediaType

    /// The identifier of the media item.
    public var id: String

    /// The duration of the media item, in milliseconds.
    public var duration: Int

    /// The aspect ratio of the media item.
    public var aspectRatio: Double

    /// If the media item is a live broadcast.
    public var isLive: Bool

    /// If the media item should be allowed to start playing without user interaction.
    public var canAutoPlay: Bool

    /// The identifier of the media item.
    public var episodePid: String?

    /// Creates a new remote source for a playable media item.
    /// - Parameters:
    ///   - type: The type of the media.
    ///   - id: The identifier of the media item.
    ///   - duration: The duration of the media item, in milliseconds.
    ///   - aspectRatio: The aspect ratio of the media item.
    ///   - isLive: If the media item is a live broadcast.
    ///   - canAutoPlay: If the media item should be allowed to start playing without user interaction.
    ///   - episodePid: The identifier of the media item.
    public init(
        type: FDMediaType,
        id: String,
        duration: Int,
        aspectRatio: Double,
        isLive: Bool,
        canAutoPlay: Bool,
        episodePid: String? = nil
    ) {
        self.type = type
        self.id = id
        self.duration = duration
        self.aspectRatio = aspectRatio
        self.isLive = isLive
        self.canAutoPlay = canAutoPlay
        self.episodePid = episodePid
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }

    // swiftlint:disable:next operator_whitespace
    public static func ==(lhs: FDMediaSource, rhs: FDMediaSource) -> Bool {
        return lhs.id == rhs.id
    }
}
