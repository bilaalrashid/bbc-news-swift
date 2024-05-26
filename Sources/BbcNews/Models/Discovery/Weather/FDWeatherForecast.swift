//
//  FDWeatherForecast.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

/// A weather description of a forecast prediction.
public struct FDWeatherForecast: Codable, Equatable, Hashable {
    /// The short, textual description of the forecast.
    public var description: String

    /// The highest temperature predicted during the forecast period.
    public var high: FDTemperature

    /// The lowest temperature predicted during the forecast period.
    public var low: FDTemperature

    /// The identifier of the weather icon to be displayed.
    public var icon: String

    /// If the forecast should be displayed to the user in a night-time specific layout.
    public var nightTimeLayout: Bool
    
    /// Created a new weather a forecast prediction.
    ///
    /// - Parameters:
    ///   - description: The short, textual description of the forecast.
    ///   - high: The highest temperature predicted during the forecast period.
    ///   - low: The lowest temperature predicted during the forecast period.
    ///   - icon: The identifier of the weather icon to be displayed.
    ///   - nightTimeLayout: If the forecast should be displayed to the user in a night-time specific layout.
    public init(description: String, high: FDTemperature, low: FDTemperature, icon: String, nightTimeLayout: Bool) {
        self.description = description
        self.high = high
        self.low = low
        self.icon = icon
        self.nightTimeLayout = nightTimeLayout
    }

    private enum CodingKeys: String, CodingKey {
        case description, high, low, icon, nightTimeLayout = "nighttimeLayout"
    }
}
