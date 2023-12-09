//
//  FDWeatherPromoSummary.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDWeatherPromoSummary: Codable, Equatable, Hashable {
    public let type: String
    public let period: String
    public let location: FDWeatherLocation
    public let forecast: FDWeatherForecast

    public init(type: String, period: String, location: FDWeatherLocation, forecast: FDWeatherForecast) {
        self.type = type
        self.period = period
        self.location = location
        self.forecast = forecast
    }
}
