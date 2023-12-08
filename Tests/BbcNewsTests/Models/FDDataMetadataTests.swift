//
//  FDDataMetadataTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 08/12/2023.
//

import XCTest
@testable import BbcNews

final class FDDataMetadataTests: XCTestCase {
    func testDecodeJson() throws {
        let json = """
            {
                "name": "Home",
                "allowAdvertising": true,
                "lastUpdated": 1702078376217,
                "shareUrl": "https://www.bbc.co.uk/news/front_page"
            }
        """

        let expected = FDDataMetadata(
            name: "Home",
            allowAdvertising: true,
            lastUpdated: 1702078376217,
            shareUrl: "https://www.bbc.co.uk/news/front_page"
        )

        let decoder = JSONDecoder()
        XCTAssertEqual(try decoder.decode(FDDataMetadata.self, from: json.data(using: .utf8)!), expected)

    }
}
