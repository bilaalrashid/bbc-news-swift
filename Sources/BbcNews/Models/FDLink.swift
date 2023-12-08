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
