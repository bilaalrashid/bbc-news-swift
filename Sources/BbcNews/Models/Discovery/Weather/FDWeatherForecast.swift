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
}
