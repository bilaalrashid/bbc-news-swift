//
//  FDAttributeType.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// A type of attribute for a span of text.
public enum FDAttributeType: String, Codable, Equatable, Hashable, Unknownable {
    case link
    case emphasis

    case unknown
}
