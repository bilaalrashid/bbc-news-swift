//
//  FDAttribute.swift
//
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// An attribute that can be applied to a span of text.
public enum FDAttribute: String, Codable, Equatable, Hashable, Unknownable {
    case bold
    case italic

    case unknown
}
