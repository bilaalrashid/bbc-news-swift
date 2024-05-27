//
//  FDPresentationType.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// Types of a link presentation.
public enum FDPresentationType: String, Codable, Equatable, Hashable, Unknownable {
    case web = "WEB"
    case singleRenderer = "SINGLE_RENDERER"
    case multipleRenderer = "MULTIPLE_RENDERER"
    case noPadding = "NO_PADDING"

    case unknown
}
