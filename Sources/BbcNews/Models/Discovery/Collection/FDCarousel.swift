//
//  FDCarousel.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A collection of story promos that should be displayed as a scrollable carousel.
public struct FDCarousel: FDCollection, Codable, Equatable, Hashable, Sendable {
    /// Used for decoding `FDItem`. This is always `Carousel`.
    internal let type: String

    /// The story promos to be displayed in the collection.
    public var storyPromos: [FDStoryPromo]

    /// The aspect ratio of each promo displayed in the collection.
    public var aspectRatio: Double

    /// The description of how the view should be displayed.
    public var presentation: FDPresentation

    /// If page indicators be displayed for each item in the carousel.
    public var hasPageIndicator: Bool

    /// Creates a new collection of story promos that should be displayed as a scrollable carousel.
    ///
    /// - Parameters:
    ///   - storyPromos: The story promos to be displayed in the collection.
    ///   - aspectRatio: The aspect ratio of each promo displayed in the collection.
    ///   - presentation: The description of how the view should be displayed.
    ///   - hasPageIndicator: If page indicators be displayed for each item in the carousel.
    public init(storyPromos: [FDStoryPromo], aspectRatio: Double, presentation: FDPresentation, hasPageIndicator: Bool) {
        self.type = "Carousel"
        self.storyPromos = storyPromos
        self.aspectRatio = aspectRatio
        self.presentation = presentation
        self.hasPageIndicator = hasPageIndicator
    }

    private enum CodingKeys: String, CodingKey {
        case type, storyPromos = "items", aspectRatio, presentation, hasPageIndicator
    }
}
