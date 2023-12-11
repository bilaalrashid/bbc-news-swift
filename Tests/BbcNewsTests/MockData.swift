//
//  MockData.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 09/12/2023.
//

import Foundation
import BbcNews

struct MockData {
    static let fdTopic: (json: String, expected: FDTopic) = {
        return (
            json: """
                {
                    "text": "UK Politics",
                    "title": "UK Politics",
                    "link": \(MockData.fdLink.json)
                }
            """,
            expected: FDTopic(text: "UK Politics", title: "UK Politics", link: MockData.fdLink.expected)
        )
    }()

    static let fdCollectionHeader: [(json: String, expected: FDCollectionHeader)] = {
        return [
            (
                json: """
                    {
                        "type": "CollectionHeader",
                        "text": "Business"
                    }
                """,
                expected: FDCollectionHeader(type: "CollectionHeader", text: "Business")
            ),
            (
                json: """
                    {
                        "type": "CollectionHeader",
                        "text": "Business",
                        "link": \(MockData.fdLink.json)
                    }
                """,
                expected: FDCollectionHeader(type: "CollectionHeader", text: "Business", link: MockData.fdLink.expected)
            )
        ]
    }()

    static let fdCopyright: (json: String, expected: FDCopyright) = {
        return (
            json: """
                {
                    "type": "Copyright",
                    "lastUpdated": 1702232639489
                }
            """,
            expected: FDCopyright(type: "Copyright", lastUpdated: 1702232639489)
        )
    }()

    static let fdLink: (json: String, expected: FDLink) = {
        return (
            json: """
                {
                    "destinations": [\(MockData.fdLinkDestination.json)]
                }
            """,
            expected: FDLink(destinations: [MockData.fdLinkDestination.expected])
        )
    }()

    static let fdLinkDestination: (json: String, expected: FDLinkDestination) = {
        return (
            json: """
                {
                    "sourceFormat": "ABL",
                    "url": "https://news-app.api.bbc.co.uk/fd/abl?clientName=Chrysalis&page=uk-politics-67651883&service=news&type=asset",
                    "id": "/news/uk-politics-67651883",
                    "presentation": \(MockData.fdPresentation[0].json)
                }
            """,
            expected: FDLinkDestination(
                sourceFormat: "ABL",
                url: "https://news-app.api.bbc.co.uk/fd/abl?clientName=Chrysalis&page=uk-politics-67651883&service=news&type=asset",
                id: "/news/uk-politics-67651883",
                presentation: MockData.fdPresentation[0].expected
            )
        )
    }()

    static let fdPresentation: [(json: String, expected: FDPresentation)] = {
        return [
            (
                json: """
                    {
                        "type": "SINGLE_RENDERER",
                    }
                """,
                expected: FDPresentation(type: "SINGLE_RENDERER")
            ),
            (
                json: """
                    {
                        "type": "SINGLE_RENDERER",
                        "title": "Business",
                        "canShare": false,
                        "contentSource": "BBC"
                    }
                """,
                expected: FDPresentation(
                    type: "SINGLE_RENDERER",
                    title: "Business",
                    canShare: false,
                    contentSource: "BBC"
                )
            )
        ]
    }()

    static let fdDataMetadata: (json: String, expected: FDDataMetadata) = {
        return (
            json: """
                {
                    "name": "Home",
                    "allowAdvertising": true,
                    "lastUpdated": 1702078376217,
                    "shareUrl": "https://www.bbc.co.uk/news/front_page"
                }
            """,
            expected: FDDataMetadata(
                name: "Home",
                allowAdvertising: true,
                lastUpdated: 1702078376217,
                shareUrl: "https://www.bbc.co.uk/news/front_page"
            )
        )
    }()
}
