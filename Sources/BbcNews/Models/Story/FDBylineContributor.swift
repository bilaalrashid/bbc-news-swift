//
//  FDBylineContributor.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 06/05/2024.
//

import Foundation

/// A contributor to a story in a byline.
public struct FDBylineContributor: Codable, Equatable, Hashable {
    /// The type of the contributor.
    public var type: String?

    /// The name of the contributor.
    public var name: String

    /// The role of the contributor.
    public var role: String

    /// Creates a new contributor for a story.
    ///
    /// - Parameters:
    ///   - type: The type of the contributor.
    ///   - name: The name of the contributor.
    ///   - role: The role of the contributor.
    public init(type: String?, name: String, role: String) {
        self.type = type
        self.name = name
        self.role = role
    }
}
