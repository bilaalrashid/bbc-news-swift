//
//  FDWeatherLocation.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

public struct FDWeatherLocation: Codable, Equatable, Hashable {
    public var name: String
    public var isCurrentLocation: Bool

    public init(name: String, isCurrentLocation: Bool) {
        self.name = name
        self.isCurrentLocation = isCurrentLocation
    }
}
