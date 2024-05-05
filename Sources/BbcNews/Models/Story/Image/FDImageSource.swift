//
//  FDImageSource.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDImageSource: Codable, Equatable, Hashable {
    public var url: String
    public var sizingMethod: FDImageSizingMethod
    public var aspectRatio: Double?

    public init(url: String, sizingMethod: FDImageSizingMethod, aspectRatio: Double? = nil) {
        self.url = url
        self.sizingMethod = sizingMethod
        self.aspectRatio = aspectRatio
    }
}
