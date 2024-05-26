//
//  FDWeatherPromoSummary.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A promo summary for the weather forecast.
public struct FDWeatherPromoSummary: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `WeatherPromoSummary`.
    internal let type: String

    /// The textual description of the time period covered by the forecast.
    public var period: String

    /// The location being described by a weather forecast.
    public var location: FDWeatherLocation

    /// The weather description of the forecast prediction.
    public var forecast: FDWeatherForecast
    
    /// Creates a new promo summary for a weather forecast.
    ///
    /// - Parameters:
    ///   - period: The textual description of the time period covered by the forecast.
    ///   - location: he location being described by a weather forecast.
    ///   - forecast: The weather description of the forecast prediction.
    public init(period: String, location: FDWeatherLocation, forecast: FDWeatherForecast) {
        self.type = "WeatherPromoSummary"
        self.period = period
        self.location = location
        self.forecast = forecast
    }
}
