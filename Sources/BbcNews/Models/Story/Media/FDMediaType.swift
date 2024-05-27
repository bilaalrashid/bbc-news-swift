//
//  FDMediaType.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// A type of media item.
public enum FDMediaType: String, Codable, Equatable, Hashable, Unknownable {
    case video = "VIDEO"
    case audio = "AUDIO"

    case unknown
}
