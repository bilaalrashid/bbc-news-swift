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
            sourceFormat: "HTML",
            url: "https://www.bbc.com/news/articles/cqenq3e2ld1o",
            id: "https://www.bbc.com/news/articles/cqenq3e2ld1o",
            presentation: FDPresentation(type: "WEB", contentSource: "BBC")
        )
        XCTAssertEqual(html.shareUrl, URL(string: "https://www.bbc.com/news/articles/cqenq3e2ld1o"))

        let abl = FDLinkDestination(
            sourceFormat: "ABL",
            url: "https://news-app.api.bbc.co.uk/fd/abl?clientName=Chrysalis&page=uk-politics-68959732&service=news&type=asset",
            id: "/news/uk-politics-68959732",
            presentation: FDPresentation(type: "SINGLE_RENDERER", canShare: true)
        )
        XCTAssertEqual(abl.shareUrl, URL(string: "https://bbc.co.uk/news/uk-politics-68959732"))
    }
}
