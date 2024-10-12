//
//  FDTopic.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A topic that a story can relate to.
public struct FDTopic: Codable, Equatable, Hashable, Sendable {
    /// The name of the topic.
    ///
    /// This is never used alongside `title`.
    public var text: String?

    /// The name of the topic.
    ///
    /// This is never used alongside `text`.
    public var title: String?

    /// A link to a new page.
    public var link: FDLink?

    /// Creates a new story topic.
    ///
    /// - Parameters:
    ///   - text: The name of the topic.
    ///   - title: The name of the topic.
    ///   - link: A link to a new page.
    public init(text: String? = nil, title: String? = nil, link: FDLink? = nil) {
        self.text = text
        self.title = title
        self.link = link
    }

    /// A single display name for the topic.
    ///
    /// This is wrapper around `text` and `title`
    public var displayName: String? {
        return self.title ?? self.text
    }
}
