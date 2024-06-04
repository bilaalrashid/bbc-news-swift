//
//  Language.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 04/06/2024.
//

import Foundation

/// A language supported by the API.
public enum Language: Codable, Equatable, Hashable {
    /// The Arabic language.
    case arabic

    /// The Cymru language.
    case cymru

    /// The English language.
    case english

    /// The Hindi language.
    case hindi

    /// The Mundo language.
    case mundo

    /// The Russian language.
    case russian

    /// The value of the `clientName` URL parameter to use when calling the API for this language.
    var clientName: String {
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

    /// The value of the `service` URL parameter to use when calling the API for this language.
    var service: String {
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
