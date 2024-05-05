//
//  FDLink.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

public struct FDLink: Codable, Equatable, Hashable {
    public var destinations: [FDLinkDestination]

    public init(destinations: [FDLinkDestination]) {
        self.destinations = destinations
    }
}
