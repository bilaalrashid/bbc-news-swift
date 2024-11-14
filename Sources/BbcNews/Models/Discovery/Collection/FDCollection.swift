//
//  FDCollection.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 01/11/2023.
//

import Foundation

/// A collection of story promos.
public protocol FDCollection {
    /// The story promos to be displayed in the collection.
    var storyPromos: [FDStoryPromo] { get }
}
