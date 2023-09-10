//
//  FDLink.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDLink: Codable, Equatable, Hashable {
    let destinations: [FDLinkDestination]
}

struct FDLinkDestination: Codable, Equatable, Hashable {
    let sourceFormat: String
    let url: String
    let id: String
    let presentation: FDPresentation
}

