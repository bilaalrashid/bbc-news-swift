//
//  FDWeatherIcon.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// Icon names representing weather conditions.
public enum FDWeatherIcon: String, Codable, Equatable, Hashable, Unknownable {
    case sleetShower = "SLEET_SHOWER"
    case thunderstorm = "THUNDERSTORM"
    case hail = "HAIL"
    case hailShower = "HAIL_SHOWER"
    case hailShowerNight = "HAIL_SHOWER_NIGHT"
    case mist = "MIST"
    case sleet = "SLEET"
    case sleetShowerNight = "SLEET_SHOWER_NIGHT"
    case sunny = "SUNNY"
    case sunnyIntervals = "SUNNY_INTERVALS"
    case thunderyShower = "THUNDERY_SHOWER"
    case thunderyShowerNight = "THUNDERY_SHOWER_NIGHT"
    case heavyRain = "HEAVY_RAIN"
    case heavyRainShower = "HEAVY_RAIN_SHOWER"
    case heavyRainShowerNight = "HEAVY_RAIN_SHOWER_NIGHT"
    case heavySnow = "HEAVY_SNOW"
    case heavySnowShower = "HEAVY_SNOW_SHOWER"
    case heavySnowShowerNight = "HEAVY_SNOW_SHOWER_NIGHT"
    case lightRain = "LIGHT_RAIN"
    case lightRainShower = "LIGHT_RAIN_SHOWER"
    case lightRainShowerNight = "LIGHT_RAIN_SHOWER_NIGHT"
    case lightSnow = "LIGHT_SNOW"
    case lightSnowShower = "LIGHT_SNOW_SHOWER"
    case lightSnowShowerNight = "LIGHT_SNOW_SHOWER_NIGHT"
    case lightSourceCloudyWeather = "LIGHT_SOURCE_CLOUDY_WEATHER"
    case partlyCloudy = "PARTLY_CLOUDY"
    case sandstorm = "SANDSTORM"
    case tropicalStorm = "TROPICAL_STORM"

    case unknown
}
