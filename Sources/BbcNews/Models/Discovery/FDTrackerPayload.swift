//
//  FDTrackerPayload.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 27/05/2024.
//

import Foundation

/// A payload of a tracker event.
public struct FDTrackerPayload: Codable, Equatable, Hashable {
    /// The URL or ID of the payload.
    public var id: String?

    /// The name of the payload.
    public var name: String?

    /// The title of the page content represented by the payload.
    public var pageTitle: String?

    /// The section that the payload represents.
    public var section: String?

    /// The sections that the payload represents.
    public var sections: String?

    /// The uniform resource name of the content.
    public var uasToken: String?

    /// The uniform resource name of the content.
    public var bbcContentId: String?

    /// The service or brand of the content the payload represents.
    public var bbcProducer: String?

    /// The type of content that the payload represents.
    public var bbcContentType: String?

    /// The type of the action the payload represents.
    public var actionType: String?

    /// The name of the action the payload represents.
    public var actionName: String?

    /// Creates a new payload for a tracker event.
    ///
    /// - Parameters:
    ///   - id: The URL or ID of the payload.
    ///   - name: The name of the payload.
    ///   - pageTitle: The title of the page content represented by the payload.
    ///   - section: The section that the payload represents.
    ///   - sections: The sections that the payload represents.
    ///   - uasToken: The uniform resource name of the content.
    ///   - bbcContentId: The uniform resource name of the content.
    ///   - bbcProducer: The service or brand of the content the payload represents.
    ///   - bbcContentType: The type of content that the payload represents.
    ///   - actionType: The type of the action the payload represents.
    ///   - actionName: The name of the action the payload represents.
    public init(
        id: String? = nil,
        name: String? = nil,
        pageTitle: String? = nil,
        section: String? = nil,
        sections: String? = nil,
        uasToken: String? = nil,
        bbcContentId: String? = nil,
        bbcProducer: String? = nil,
        bbcContentType: String? = nil,
        actionType: String? = nil,
        actionName: String? = nil
    ) {
        self.id = id
        self.name = name
        self.pageTitle = pageTitle
        self.section = section
        self.sections = sections
        self.uasToken = uasToken
        self.bbcContentId = bbcContentId
        self.bbcProducer = bbcProducer
        self.bbcContentType = bbcContentType
        self.actionType = actionType
        self.actionName = actionName
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case pageTitle = "page_title"
        case section
        case sections
        case uasToken
        case bbcContentId = "bbc_content_id"
        case bbcProducer = "bbc_producer"
        case bbcContentType = "bbc_content_type"
        case actionType = "action_type"
        case actionName = "action_name"
    }
}
