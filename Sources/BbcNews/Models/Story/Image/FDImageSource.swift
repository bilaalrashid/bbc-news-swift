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

    public init(url: String, sizingMethod: FDImageSizingMethod, aspectRatio: Double? = nil) {
        self.url = url
        self.sizingMethod = sizingMethod
        self.aspectRatio = aspectRatio
    }
}
