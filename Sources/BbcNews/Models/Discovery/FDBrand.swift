//
//  FDBrand.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// A brand described by the API.
public enum FDBrand: String, Codable, Equatable, Hashable, Sendable, Unknownable {
    case news = "NEWS"
    case sport = "SPORT"
    case defaultBrand = "DEFAULT"

    case unknown
}
