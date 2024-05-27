//
//  FDStoryPromoStyle.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// Styles which a promo card could be displayed in.
public enum FDStoryPromoStyle: String, Codable, Equatable, Hashable, Unknownable {
    case badgeLedPromoCard = "BADGE_LED_PROMO_CARD"
    case emphasisedPromoCard = "EMPHASISED_PROMO_CARD"
    case galleryPromoCard = "GALLERY_PROMO_CARD"
    case heroPromoCard = "HERO_PROMO_CARD"
    case highlightedPromoCard = "HIGHLIGHTED_PROMO_CARD"
    case imageLedPromoCard = "IMAGE_LED_PROMO_CARD"
    case impactfulTextPromoCard = "IMPACTFUL_TEXT_PROMO_CARD"
    case largePromoCard = "LARGE_PROMO_CARD"
    case portraitPromoCard = "PORTRAIT_PROMO_CARD"
    case smallCarouselPromoCard = "SMALL_CAROUSEL_PROMO_CARD"
    case smallHorizontalPromoCard = "SMALL_HORIZONTAL_PROMO_CARD"
    case smallVerticalPromoCard = "SMALL_VERTICAL_PROMO_CARD"
    case squarePromoCard = "SQUARE_PROMO_CARD"
    case squareTextOverImagePromoCard = "SQUARE_TEXT_OVER_IMAGE_PROMO_CARD"
    case textPromoCard = "TEXT_PROMO_CARD"
    case videoPackagePromoCard = "VIDEO_PACKAGE_PROMO_CARD"

    case unknown
}
