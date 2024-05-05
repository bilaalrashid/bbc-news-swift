//
//  FDWeatherForecast.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

public struct FDWeatherForecast: Codable, Equatable, Hashable {
    public var description: String
    public var high: FDTemperature
    public var low: FDTemperature
    public var icon: String
    public var nighttimeLayout: Bool

    public init(description: String, high: FDTemperature, low: FDTemperature, icon: String, nighttimeLayout: Bool) {
        self.description = description
        self.high = high
        self.low = low
        self.icon = icon
        self.nighttimeLayout = nighttimeLayout
    }
}
