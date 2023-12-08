//
//  FDImageSource.swift
//
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

struct FDImageSource: Codable, Equatable, Hashable {
    let url: String
    let sizingMethod: FDImageSizingMethod
    let aspectRatio: Double?
}
