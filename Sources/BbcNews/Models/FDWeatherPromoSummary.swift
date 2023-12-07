//
//  FDWeatherPromoSummary.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDWeatherPromoSummary: Codable, Equatable, Hashable {
    let type: String
    let period: String
    let location: FDWeatherLocation
    let forecast: FDWeatherForecast
}

struct FDWeatherLocation: Codable, Equatable, Hashable {
    let name: String
    let isCurrentLocation: Bool
}

struct FDWeatherForecast: Codable, Equatable, Hashable {
    let description: String
    let high: FDTemperature
    let low: FDTemperature
    let icon: String
    let nighttimeLayout: Bool
}

struct FDTemperature: Codable, Equatable, Hashable {
    let celsius: Int
}
