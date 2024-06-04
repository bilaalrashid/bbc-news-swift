//
//  ReleaseTrack.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 04/06/2024.
//

import Foundation

/// A release track for the API.
public enum ReleaseTrack: String, Codable, Equatable, Hashable {
    /// The `public-alpha` release track.
    case publicAlpha = "public-alpha"

    /// The `team` release track.
    case team = "team"
}
