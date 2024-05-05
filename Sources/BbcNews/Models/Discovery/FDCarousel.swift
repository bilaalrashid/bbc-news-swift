//
//  FDCarousel.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDCarousel: Codable, Equatable, Hashable {
    public var type: String
    public var items: [FDStoryPromo]
    public var aspectRatio: Double
    public var presentation: FDPresentation
    public var hasPageIndicator: Bool

    public init(type: String, items: [FDStoryPromo], aspectRatio: Double, presentation: FDPresentation, hasPageIndicator: Bool) {
        self.type = type
        self.items = items
        self.aspectRatio = aspectRatio
        self.presentation = presentation
        self.hasPageIndicator = hasPageIndicator
    }
}
