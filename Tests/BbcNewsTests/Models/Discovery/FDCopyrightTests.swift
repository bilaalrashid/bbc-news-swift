//
//  FDCopyrightTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 10/12/2023.
//

import XCTest
import BbcNews

final class FDCopyrightTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdCopyright.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDCopyright.self, from: json),
            MockData.fdCopyright.expected,
            "Unable to decode JSON to FDCopyright"
        )
    }
}
