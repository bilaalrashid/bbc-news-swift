//
//  Service.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 04/06/2024.
//

import Foundation

/// An international service that API results should be localised for e.g. BBC Cymru.
public enum Service: String, Codable, Equatable, Hashable, CaseIterable {
    /// The Arabic language service.
    case arabic

    /// The Cymru language service.
    case cymru

    /// The English language service.
    case english

    /// The Hindi language service.
    case hindi

    /// The Mundo language service.
    case mundo

    /// The Russian language service.
    case russian

    /// The user facing name of the service.
    public var displayName: String {
        switch self {
        case .arabic:
            return "Arabic"
        case .cymru:
            return "Cymru"
        case .english:
            return "English"
        case .hindi:
            return "Hindi"
        case .mundo:
            return "Mundo"
        case .russian:
            return "Russian"
        }
    }

    /// The value of the `clientName` URL parameter to use when calling the API for this service.
    public var clientName: String {
        switch self {
        case .arabic:
            return "Arabic"
        case .cymru:
            return "Cymru"
        case .english:
            return "Chrysalis"
        case .hindi:
            return "Hindi"
        case .mundo:
            return "Mundo"
        case .russian:
            return "Russian"
        }
    }

    /// The value of the `service` URL parameter to use when calling the API for this service.
    public var service: String {
        switch self {
        case .arabic:
            return "arabic"
        case .cymru:
            return "cymrufyw"
        case .english:
            return "news"
        case .hindi:
            return "hindi"
        case .mundo:
            return "mundo"
        case .russian:
            return "russian"
        }
    }
}
