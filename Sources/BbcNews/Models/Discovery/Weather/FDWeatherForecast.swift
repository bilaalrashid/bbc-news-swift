//
//  FDWeatherForecast.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

struct FDWeatherForecast: Codable, Equatable, Hashable {
    let description: String
    let high: FDTemperature
    let low: FDTemperature
    let icon: String
    let nighttimeLayout: Bool
}
