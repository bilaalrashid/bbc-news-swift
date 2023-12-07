//
//  FDResult.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 09/09/2023.
//

import Foundation

struct FDResult: Codable, Equatable, Hashable {
    let data: FDData
    let contentType: String
}
