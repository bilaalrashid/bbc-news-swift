//
//  FDTextContainerSpanTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 12/12/2023.
//

import XCTest
import BbcNews

final class FDTextContainerSpanTests: XCTestCase {
    func testDecodeMinimalJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdTextContainerSpan[0].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDTextContainerSpan.self, from: json),
            MockData.fdTextContainerSpan[0].expected,
            "Unable to decode minimal JSON to FDTextContainerSpan"
        )
    }

    func testDecodeFullJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdTextContainerSpan[1].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDTextContainerSpan.self, from: json),
            MockData.fdTextContainerSpan[1].expected,
            "Unable to decode full JSON to FDTextContainerSpan"
        )
    }
}
