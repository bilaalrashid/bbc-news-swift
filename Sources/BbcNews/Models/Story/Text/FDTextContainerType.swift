//
//  FDTextContainerType.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// A type of a text container.
public enum FDTextContainerType: String, Codable, Equatable, Hashable, Unknownable {
    case introduction
    case body
    case crosshead

    case unknown
}
