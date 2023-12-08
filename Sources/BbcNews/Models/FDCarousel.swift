//
//  FDCarousel.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDCarousel: Codable, Equatable, Hashable {
    let type: String
    let items: [FDStoryPromo]
    let aspectRatio: Double
    let presentation: FDPresentation
    let hasPageIndicator: Bool
}
