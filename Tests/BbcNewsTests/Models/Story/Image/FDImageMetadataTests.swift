//
//  FDImageMetadataTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 12/12/2023.
//

import XCTest
import BbcNews

final class FDImageMetadataTests: XCTestCase {
    func testDecodeJson() throws {
        let decoder = JSONDecoder()
        let json = MockData.fdImageMetadata.json.data(using: .utf8)!

        XCTAssertEqual(
            try decoder.decode(FDImageMetadata.self, from: json),
            MockData.fdImageMetadata.expected,
            "Unable to decode JSON to FDImageMetadata"
        )
    }
}
