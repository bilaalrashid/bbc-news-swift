//
//  FDWeatherPromoSummary.swift
//  BbcNews
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
