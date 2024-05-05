//
//  FDWeatherPromoSummary.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDWeatherPromoSummary: Codable, Equatable, Hashable {
    public var type: String
    public var period: String
    public var location: FDWeatherLocation
    public var forecast: FDWeatherForecast

    public init(type: String, period: String, location: FDWeatherLocation, forecast: FDWeatherForecast) {
        self.type = type
        self.period = period
        self.location = location
        self.forecast = forecast
    }
}
