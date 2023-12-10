//
//  FDPresentationTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 10/12/2023.
//

import XCTest
import BbcNews

final class FDPresentationTests: XCTestCase {
    func testDecodeMinimalJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdPresentation[0].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDPresentation.self, from: json),
            MockData.fdPresentation[0].expected,
            "Unable to minimal decode JSON to FDPresentation"
        )
    }

    func testDecodeFullJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdPresentation[1].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDPresentation.self, from: json),
            MockData.fdPresentation[1].expected,
            "Unable to full decode JSON to FDPresentation"
        )
    }
}
