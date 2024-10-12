//
//  FDContentSource.swift
//
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// A location where a link was sourced from.
public enum FDContentSource: String, Codable, Equatable, Hashable, Sendable, Unknownable {
    case bbc = "BBC"
    case external = "EXTERNAL"

    case unknown
}
