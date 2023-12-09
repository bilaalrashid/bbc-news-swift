//
//  FDWeatherForecast.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

public struct FDWeatherForecast: Codable, Equatable, Hashable {
    public let description: String
    public let high: FDTemperature
    public let low: FDTemperature
    public let icon: String
    public let nighttimeLayout: Bool

    public init(description: String, high: FDTemperature, low: FDTemperature, icon: String, nighttimeLayout: Bool) {
        self.description = description
        self.high = high
        self.low = low
        self.icon = icon
        self.nighttimeLayout = nighttimeLayout
    }
}
