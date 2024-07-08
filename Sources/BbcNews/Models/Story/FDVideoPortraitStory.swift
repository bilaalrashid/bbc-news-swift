//
//  FDVideoPortraitStory.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 22/10/2023.
//

import Foundation

/// A portrait video for a story that consists only of a single video.
public struct FDVideoPortraitStory: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `VideoPortraitStory`.
    internal let type: String

    /// The BBC pid of the video.
    public var id: String

    /// The URL of the poster image for the video story.
    ///
    /// This is deprecated in favour of `image`.
    @FailableCodable public var url: URL?

    /// The title of the video story.
    public var text: String

    /// The short description of the video story.
    public var subtext: String

    /// The video media to display in the story.
    public var media: FDMedia

    /// The poster image for the video story.
    public var image: FDImage?

    /// Creates a new portrait video story.
    ///
    /// - Parameters:
    ///   - id: The BBC pid of the video.
    ///   - url: The URL of the poster image for the video story.
    ///   - text: The title of the video story.
    ///   - subtext: The short description of the video story.
    ///   - media: The video media to display in the story.
    ///   - image: The poster image for the video story.
    public init(id: String, url: URL? = nil, text: String, subtext: String, media: FDMedia, image: FDImage? = nil) {
        self.type = "VideoPortraitStory"
        self.id = id
        self.url = url
        self.text = text
        self.subtext = subtext
        self.media = media
        self.image = image
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }

    // swiftlint:disable:next operator_whitespace
    public static func ==(lhs: FDVideoPortraitStory, rhs: FDVideoPortraitStory) -> Bool {
        return lhs.id == rhs.id
    }
}
