//
//  MockData.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 09/12/2023.
//

import Foundation
import BbcNews

struct MockData {
    static let fdBadge: [(json: String, expected: FDBadge)] = {
        return [
            (
                json: """
                    {
                        "type": "VIDEO",
                        "brand": "NEWS"
                    }
                """,
                expected: FDBadge(type: "VIDEO", brand: "NEWS")
            ),
            (
                json: """
                    {
                        "type": "VIDEO",
                        "brand": "NEWS",
                        "text": "LIVE",
                        "duration": 23000
                    }
                """,
                expected: FDBadge(type: "VIDEO", brand: "NEWS", text: "LIVE", duration: 23000)
            )
        ]
    }()

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

    static let fdImageSource: [(json: String, expected: FDImageSource)] = {
        return [
            (
                json: """
                    {
                        "url": "https://ichef.bbci.co.uk/moira/img/android/v3/{width}/cpsprodpb/14DD4/production/_121306458_976aa.jpg",
                        "sizingMethod": \(MockData.fdImageSizingMethod.json)
                    }
                """,
                expected: FDImageSource(
                    url: "https://ichef.bbci.co.uk/moira/img/android/v3/{width}/cpsprodpb/14DD4/production/_121306458_976aa.jpg",
                    sizingMethod: MockData.fdImageSizingMethod.expected
                )
            ),
            (
                json: """
                    {
                        "url": "https://ichef.bbci.co.uk/moira/img/android/v3/{width}/cpsprodpb/14DD4/production/_121306458_976aa.jpg",
                        "sizingMethod": \(MockData.fdImageSizingMethod.json),
                        "aspectRatio": 1.7777777777777777
                    }
                """,
                expected: FDImageSource(
                    url: "https://ichef.bbci.co.uk/moira/img/android/v3/{width}/cpsprodpb/14DD4/production/_121306458_976aa.jpg",
                    sizingMethod: MockData.fdImageSizingMethod.expected,
                    aspectRatio: 1.7777777777777777
                )
            )
        ]
    }()

    static let fdImageSizingMethod: (json: String, expected: FDImageSizingMethod) = {
        return (
            json: """
                {
                    "type": "SPECIFIC_WIDTHS",
                    "widthToken": "{width}",
                    "widths": [80, 100, 128]
                }
            """,
            expected: FDImageSizingMethod(type: "SPECIFIC_WIDTHS", widthToken: "{width}", widths: [80, 100, 128])
        )
    }()

    static let fdTextContainer: (json: String, expected: FDTextContainer) = {
        return (
            json: """
                {
                    "type": "textContainer",
                    "containerType": "body",
                    "text": \(MockData.fdTextContainerText.json)
                }
            """,
            expected: FDTextContainer(type: "textContainer", containerType: "body", text: MockData.fdTextContainerText.expected)
        )
    }()

    static let fdTextContainerText: (json: String, expected: FDTextContainerText) = {
        return (
            json: """
                {
                    "text": "Lorem ipsum dolor sit amet",
                    "spans": [\(MockData.fdTextContainerSpan[1].json)]
                }
            """,
            expected: FDTextContainerText(text: "Lorem ipsum dolor sit amet", spans: [MockData.fdTextContainerSpan[1].expected])
        )
    }()

    static let fdTextContainerSpan: [(json: String, expected: FDTextContainerSpan)] = {
        return [
            (
                json: """
                    {
                        "type": "emphasis",
                        "startIndex": 0,
                        "length": 34
                    }
                """,
                expected: FDTextContainerSpan(
                    type: "emphasis",
                    startIndex: 0,
                    length: 34
                )
            ),
            (
                json: """
                    {
                        "type": "emphasis",
                        "startIndex": 0,
                        "length": 34,
                        "attribute": "italic",
                        "link": \(MockData.fdLink.json)
                    }
                """,
                expected: FDTextContainerSpan(
                    type: "emphasis",
                    startIndex: 0,
                    length: 34,
                    attribute: "italic",
                    link: MockData.fdLink.expected
                )
            )
        ]
    }()

    static let fdHeadline: [(json: String, expected: FDHeadline)] = {
        return [
            (
                json: """
                    {
                        "type": "Headline",
                        "text": "Sir David Attenborough: What's in Planet Earth III?",
                        "lastUpdated": 1697475724000,
                        "languageCode": "en-gb",
                        "readTimeMinutes": 1
                    }
                """,
                expected: FDHeadline(
                    type: "Headline",
                    text: "Sir David Attenborough: What's in Planet Earth III?",
                    lastUpdated: 1697475724000,
                    languageCode: "en-gb",
                    readTimeMinutes: 1
                )
            ),
            (
                json: """
                    {
                        "type": "Headline",
                        "text": "Sir David Attenborough: What's in Planet Earth III?",
                        "lastUpdated": 1697475724000,
                        "byline": \(MockData.fdHeadlineByline.json),
                        "topic": \(MockData.fdTopic.json),
                        "languageCode": "en-gb",
                        "readTimeMinutes": 1
                    }
                """,
                expected: FDHeadline(
                    type: "Headline",
                    text: "Sir David Attenborough: What's in Planet Earth III?",
                    lastUpdated: 1697475724000,
                    byline: MockData.fdHeadlineByline.expected,
                    topic: MockData.fdTopic.expected,
                    languageCode: "en-gb",
                    readTimeMinutes: 1
                )
            )
        ]
    }()

    static let fdHeadlineByline: (json: String, expected: FDHeadlineByline) = {
        return (
            json: """
                {
                    "name": "By Chris Mason",
                    "purpose": "BBC News"
                }
            """,
            expected: FDHeadlineByline(name: "By Chris Mason", purpose: "BBC News")
        )
    }()

    static let fdSectionHeader: (json: String, expected: FDSectionHeader) = {
        return (
            json: """
                {
                    "type": "SectionHeader",
                    "text": "Related Stories"
                }
            """,
            expected: FDSectionHeader(type: "SectionHeader", text: "Related Stories")
        )
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
