//
//  FDResult.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 09/09/2023.
//

import Foundation

public struct FDResult: Codable, Equatable, Hashable {
    public var data: FDData
    public var contentType: String

    public init(data: FDData, contentType: String) {
        self.data = data
        self.contentType = contentType
    }
}
