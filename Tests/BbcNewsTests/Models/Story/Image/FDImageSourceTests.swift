//
//  FDImageSourceTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 12/12/2023.
//

import XCTest
import BbcNews

final class FDImageSourceTests: XCTestCase {
    func testDecodeMinimalJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdImageSource[0].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDImageSource.self, from: json),
            MockData.fdImageSource[0].expected,
            "Unable to decode minimal JSON to FDImageSource"
        )
    }

    func testDecodeFullJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdImageSource[1].json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDImageSource.self, from: json),
            MockData.fdImageSource[1].expected,
            "Unable to decode full JSON to FDImageSource"
        )
    }
}
