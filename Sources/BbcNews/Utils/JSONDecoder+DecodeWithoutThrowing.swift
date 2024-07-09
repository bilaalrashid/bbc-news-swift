//
//  JSONDecoder+DecodeWithoutThrowing.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 09/07/2024.
//

import Foundation

extension JSONDecoder {
    /// Returns a value of the type you specify, decoded from a JSON object.
    ///
    /// - Parameters:
    ///   - type: The type of the value to decode from the supplied JSON object.
    ///   - data: The JSON object to decode.
    /// - Returns: A value of the specified type, if the decoder can parse the data.
    func decodeWithoutThrowing<T>(_ type: T.Type, from data: Data) -> Result<T, Error> where T: Decodable {
        do {
            return .success(try self.decode(type, from: data))
        } catch let error {
            return .failure(error)
        }
    }
}
