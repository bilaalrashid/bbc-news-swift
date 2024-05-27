//
//  FDContentListOrder.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 26/05/2024.
//

import Foundation

/// An order for a content list.
public enum FDContentListOrder: String, Codable, Equatable, Hashable, Unknownable {
    case ordered = "ORDERED"
    case unordered = "UNORDERED"

    case unknown
}
