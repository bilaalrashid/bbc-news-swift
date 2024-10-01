//
//  Unknownable.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// An enum type that provides a fallback value when unable to decode a given value into a defined enum case.
public protocol Unknownable: Decodable, RawRepresentable {
    /// A fallback value when unable to decode a given value into a defined enum case.
    static var unknown: Self { get }
}

public extension Unknownable where Self: RawRepresentable, Self.RawValue: Decodable {
    init(from decoder: Decoder) throws {
        let value = try? Self(rawValue: decoder.singleValueContainer().decode(RawValue.self))
        self = value ?? Self.unknown
    }
}
