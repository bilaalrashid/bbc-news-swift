//
//  FDPresentation.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 10/09/2023.
//

import Foundation

/// A description of how a page should be presented to a user.
public struct FDPresentation: Codable, Equatable, Hashable, Sendable {
    /// The type of presentation format for the page.
    public var type: FDPresentationType

    /// The title of the page to be presented.
    public var title: String?

    /// If the user can be shown a share URL to that the displayed content in web form.
    public var canShare: Bool?

    /// A description of where the linked page(s) are sourced from.
    public var contentSource: FDContentSource?

    /// A further set of links referenced by a MULTIPLE\_RENDERER presentation.
    public var renderLinks: [FDLink]?

    /// Creates a new description of how a page should be presented to a user.
    ///
    /// - Parameters:
    ///   - type: The type of presentation format for the page.
    ///   - title: The title of the page to be presented.
    ///   - canShare: If the user can be shown a share URL to that the displayed content in web form.
    ///   - contentSource: A description of where the linked page(s) are sourced from.
    ///   - renderLinks: A further set of links referenced by a MULTIPLE\_RENDERER presentation.
    public init(
        type: FDPresentationType,
        title: String? = nil,
        canShare: Bool? = nil,
        contentSource: FDContentSource? = nil,
        renderLinks: [FDLink]? = nil
    ) {
        self.type = type
        self.title = title
        self.canShare = canShare
        self.contentSource = contentSource
        self.renderLinks = renderLinks
    }
}
