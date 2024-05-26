//
//  FDResult.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 09/09/2023.
//

import Foundation

/// The main response object from the API.
///
/// This could return a list of links to stories, or the contents of a single story.
public struct FDResult: Codable, Equatable, Hashable {
    /// The main data from the API response.
    public var data: FDData

    /// The content type of the response from the API.
    public var contentType: String
    
    /// Creates a new API response object.
    ///
    /// - Parameters:
    ///   - data: The main data from the API response.
    ///   - contentType: The content type of the response from the API.
    public init(data: FDData, contentType: String) {
        self.data = data
        self.contentType = contentType
    }
}
