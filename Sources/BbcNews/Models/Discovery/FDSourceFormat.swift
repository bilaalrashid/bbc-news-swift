//
//  FDSourceFormat.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// A format that a result is returned in.
public enum FDSourceFormat: String, Codable, Equatable, Hashable, Sendable, Unknownable {
    /// A result that is defined in the native format returned by the API.
    case abl = "ABL"

    /// A result that is defined in HTML.
    case html = "HTML"

    case unknown
}
