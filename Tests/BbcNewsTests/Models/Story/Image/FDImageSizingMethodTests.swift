//
//  FDImageSizingMethodTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 12/12/2023.
//

import XCTest
import BbcNews

final class FDImageSizingMethodTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdImageSizingMethod.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDImageSizingMethod.self, from: json),
            MockData.fdImageSizingMethod.expected,
            "Unable to decode JSON to FDImageSizingMethod"
        )
    }
}
