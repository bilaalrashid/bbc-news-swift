//
//  FailableCodable.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/07/2024.
//

import Foundation

/// A property wrapper that decodes an empty value as nil.
@propertyWrapper
public struct FailableCodable<Wrapped>: Codable, Equatable, Hashable, Sendable
    where Wrapped: Codable, Wrapped: Equatable, Wrapped: Hashable, Wrapped: Sendable {
    /// The wrapped value of the property wrapper.
    public var wrappedValue: Wrapped?

    /// Creates a new `FailableCodable` property wrapper.
    ///
    /// - Parameter wrappedValue: The raw value to be wrapped.
    public init(wrappedValue: Wrapped?) {
        self.wrappedValue = wrappedValue
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.wrappedValue = try? container.decode(Wrapped.self)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.wrappedValue)
    }
}

extension KeyedDecodingContainer {
    func decode<Wrapped: Codable>(_ type: FailableCodable<Wrapped>.Type, forKey key: K) throws -> FailableCodable<Wrapped> {
        if let value = try self.decodeIfPresent(type, forKey: key) {
            return value
        }

        return FailableCodable(wrappedValue: nil)
    }
}
