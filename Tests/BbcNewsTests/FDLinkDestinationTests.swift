//
//  FDLinkDestinationTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 05/05/2024.
//

import XCTest
@testable import BbcNews

final class FDLinkDestinationTests: XCTestCase {
    func testShareUrl() throws {
        let html = FDLinkDestination(
            sourceFormat: .html,
            // swiftlint:disable:next force_unwrapping
            url: URL(string: "https://www.bbc.com/news/articles/cqenq3e2ld1o")!,
            id: "https://www.bbc.com/news/articles/cqenq3e2ld1o",
            presentation: FDPresentation(type: .web, contentSource: .bbc)
        )
        XCTAssertEqual(html.shareUrl, URL(string: "https://www.bbc.com/news/articles/cqenq3e2ld1o"))

        let legacyAbl = FDLinkDestination(
            sourceFormat: .abl,
            // swiftlint:disable:next force_unwrapping
            url: URL(string: "https://news-app.api.bbc.co.uk/fd/abl?clientName=Chrysalis&page=uk-politics-68959732&service=news&type=asset")!,
            id: "/news/uk-politics-68959732",
            presentation: FDPresentation(type: .singleRenderer, canShare: true)
        )
        XCTAssertEqual(legacyAbl.shareUrl, URL(string: "https://bbc.co.uk/news/uk-politics-68959732"))

        let abl = FDLinkDestination(
            sourceFormat: .abl,
            // swiftlint:disable:next force_unwrapping
            url: URL(string: "https://news-app.api.bbc.co.uk/fd/app-article-api?page=https%3A%2F%2Fwww.bbc.com%2Farticles%2Fceq3pw038g8o&clientName=Chrysalis&clientVersion=pre-7")!,
            id: "https://www.bbc.com/articles/ceq3pw038g8o",
            presentation: FDPresentation(type: .singleRenderer, canShare: true)
        )
        XCTAssertEqual(abl.shareUrl, URL(string: "https://www.bbc.com/articles/ceq3pw038g8o"))
    }
}
