//
//  FDImageTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 12/12/2023.
//

import XCTest
import BbcNews

final class FDImageTests: XCTestCase {
    func testDecodeMinimalJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdImage[0].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDImage.self, from: json),
            MockData.fdImage[0].expected,
            "Unable to decode minimal JSON to FDImage"
        )
    }

    func testDecodeFullJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdImage[1].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDImage.self, from: json),
            MockData.fdImage[1].expected,
            "Unable to decode full JSON to FDImage"
        )
    }
}
