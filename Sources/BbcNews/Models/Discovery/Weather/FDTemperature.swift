//
//  FDTemperature.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

/// A representation of a temperate in a weather forecast.
public struct FDTemperature: Codable, Equatable, Hashable, Sendable {
    /// The temperate value, represented in celsius.
    public var celsius: Int

    /// Creates a new temperate representation.
    ///
    /// - Parameter celsius: The temperate value, represented in celsius.
    public init(celsius: Int) {
        self.celsius = celsius
    }
}
