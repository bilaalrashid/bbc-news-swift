//
//  FDData.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// The main data returned from the API.
public struct FDData: Codable, Equatable, Hashable {
    /// An optional type field returned by the API. The only known value is `ContentResponse`.
    internal let type: String?

    /// The metadata of the results returned.
    public var metadata: FDDataMetadata
    
    /// The list of ordered items to be displayed to the user.
    public var items: [FDItem]
    
    /// Creates new data returned from the API.
    ///
    /// - Parameters:
    ///   - metadata: The metadata of the results returned.
    ///   - items: The story promos or story contents to be displayed.
    public init(metadata: FDDataMetadata, items: [FDItem]) {
        self.type = "ContentResponse"
        self.metadata = metadata
        self.items = items
    }
}
