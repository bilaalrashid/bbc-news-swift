//
//  FDHeadlineTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 11/12/2023.
//

import XCTest
import BbcNews

final class FDHeadlineTests: XCTestCase {
    func testDecodeMinimalJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdHeadline[0].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDHeadline.self, from: json),
            MockData.fdHeadline[0].expected,
            "Unable to decode minimal JSON to FDHeadline"
        )
    }

    func testDecodeFullJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdHeadline[1].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDHeadline.self, from: json),
            MockData.fdHeadline[1].expected,
            "Unable to decode full JSON to FDHeadline"
        )
    }
}
