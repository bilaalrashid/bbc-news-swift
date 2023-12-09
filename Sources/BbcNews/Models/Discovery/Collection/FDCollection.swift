//
//  FDCollection.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 01/11/2023.
//

import Foundation

public protocol FDCollection {
    var type: String { get }
    var items: [FDStoryPromo] { get }
}
