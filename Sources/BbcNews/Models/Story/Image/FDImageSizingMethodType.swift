//
//  FDImageSizingMethodType.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// A type of image sizing method.
public enum FDImageSizingMethodType: String, Codable, Equatable, Hashable, Unknownable {
    /// A sizing method where a token in a URL is substituted with a selection from a pre-defined list of sizes.
    case specificWidths = "SPECIFIC_WIDTHS"

    case unknown
}
