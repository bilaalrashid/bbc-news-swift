//
//  FDImageSource.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDImageSource: Codable, Equatable, Hashable {
    public let url: String
    public let sizingMethod: FDImageSizingMethod
    public let aspectRatio: Double?
}
