//
//  FDResult.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 09/09/2023.
//

import Foundation

public struct FDResult: Codable, Equatable, Hashable {
    public let data: FDData
    public let contentType: String
}
