//
//  FDByline.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 05/05/2024.
//

import Foundation

/// The modern method for storing bylines.
///
/// Older stories use `FDHeadlineByline` instead an `FDHeadline` object instead.
public struct FDByline: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `Byline`.
    internal let type: String

    /// The list of contributors in the article.
    public var contributors: [FDBylineContributor]

    /// Creates a new byline for a story.
    ///
    /// - Parameter contributors: The list of contributors in the article.
    public init(contributors: [FDBylineContributor]) {
        self.type = "Byline"
        self.contributors = contributors
    }
}
