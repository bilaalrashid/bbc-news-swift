//
//  FDImage.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDImage: Codable, Equatable, Hashable {
    let type: String
    let source: FDImageSource
    let metdata: FDImageMetadata?
}

struct FDImageSource: Codable, Equatable, Hashable {
    let url: String
    let sizingMethod: FDImageSizingMethod
    let aspectRatio: Double?
}

struct FDImageSizingMethod: Codable, Equatable, Hashable {
    let type: String
    let widthToken: String
    let widths: [Int]
}

struct FDImageMetadata: Codable, Equatable, Hashable {
    let altText: String
    let caption: String?
    let copyrightText: String?
}
