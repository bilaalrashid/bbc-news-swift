//
//  FDLinkDestination.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

public struct FDLinkDestination: Codable, Equatable, Hashable {
    public let sourceFormat: String
    public let url: String
    public let id: String
    public let presentation: FDPresentation
}
