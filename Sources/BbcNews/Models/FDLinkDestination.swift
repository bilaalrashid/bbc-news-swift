//
//  FDLinkDestination.swift
//
//
//  Created by Bilaal Rashid on 07/12/2023.
//

import Foundation

struct FDLinkDestination: Codable, Equatable, Hashable {
    let sourceFormat: String
    let url: String
    let id: String
    let presentation: FDPresentation
}
