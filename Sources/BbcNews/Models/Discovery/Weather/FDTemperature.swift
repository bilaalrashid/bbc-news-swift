//
//  FDTemperature.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import Foundation

public struct FDTemperature: Codable, Equatable, Hashable {
    public var celsius: Int

    public init(celsius: Int) {
        self.celsius = celsius
    }
}
