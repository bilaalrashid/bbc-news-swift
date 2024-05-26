//
//  FDMedia.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A media item to be played.
public struct FDMedia: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `Media`.
    internal let type: String

    /// The remote source of the media item to be played.
    public var source: FDMediaSource

    /// The cover image for the media item.
    public var image: FDImage

    /// The metadata for the media item.
    public var metadata: FDMediaMetadata
    
    /// Creates a new playable media item.
    ///
    /// - Parameters:
    ///   - source: The source of the media item to be played.
    ///   - image: The cover image for the media item.
    ///   - metadata: The metadata for the media item.
    public init(source: FDMediaSource, image: FDImage, metadata: FDMediaMetadata) {
        self.type = "Media"
        self.source = source
        self.image = image
        self.metadata = metadata
    }
}
