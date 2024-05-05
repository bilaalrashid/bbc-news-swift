//
//  FDWeatherPromoSummary.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDWeatherPromoSummary: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `WeatherPromoSummary`.
    internal let type: String
    public var period: String
    public var location: FDWeatherLocation
    public var forecast: FDWeatherForecast

    public init(period: String, location: FDWeatherLocation, forecast: FDWeatherForecast) {
        self.type = "WeatherPromoSummary"
        self.period = period
        self.location = location
        self.forecast = forecast
    }
}
