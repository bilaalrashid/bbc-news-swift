//
//  FDBadgeType.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// The type of a badge for a story promo.
public enum FDBadgeType: String, Codable, Equatable, Hashable, Unknownable {
    case live = "LIVE"
    case breaking = "BREAKING"
    case video = "VIDEO"
    case audio = "AUDIO"
    case ordered = "ORDERED"

    case unknown
}
