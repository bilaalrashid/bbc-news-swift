//
//  FDCarousel.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDCarousel: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `Carousel`.
    internal let type: String
    public var storyPromos: [FDStoryPromo]
    public var aspectRatio: Double
    public var presentation: FDPresentation
    public var hasPageIndicator: Bool

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
