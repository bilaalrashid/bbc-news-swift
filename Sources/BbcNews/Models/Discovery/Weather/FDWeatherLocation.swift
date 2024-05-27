//
//  FDWeatherLocation.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

/// A location being described by a weather forecast.
public struct FDWeatherLocation: Codable, Equatable, Hashable {
    /// The display name of the location being described.
    ///
    /// This is typically the first half of the UK postcode for the location.
    public var name: String

    /// If the location being described the is the same as the user's current location.
    public var isCurrentLocation: Bool

    /// Creates a new location to describe a weather forecast.
    ///
    /// - Parameters:
    ///   - name: The display name of the location being described.
    ///   - isCurrentLocation: If the location being described the is the same as the user's current location.
    public init(name: String, isCurrentLocation: Bool) {
        self.name = name
        self.isCurrentLocation = isCurrentLocation
    }
}
