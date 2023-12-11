//
//  FDHeadlineBylineTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 11/12/2023.
//

import XCTest
import BbcNews

final class FDHeadlineBylineTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdHeadlineByline.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDHeadlineByline.self, from: json),
            MockData.fdHeadlineByline.expected,
            "Unable to decode JSON to FDHeadlineByline"
        )
    }
}
