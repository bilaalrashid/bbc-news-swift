//
//  FDContentList.swift
//  ReadBeeb
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

struct FDContentList: Codable, Equatable, Hashable {
    let type: String
    let ordering: String
    let listItems: [FDTextContainerText]
}
