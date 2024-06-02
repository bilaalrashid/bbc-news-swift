//
//  FDImageTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 05/05/2024.
//

import XCTest
@testable import BbcNews

final class FDImageTests: XCTestCase {
    func testImageUrls() throws {
        let image = self.getFDImage(sizingMethod: .specificWidths)

        XCTAssertEqual(
            image.largestImageUrl,
            URL(string: "https://example.invalid/img/300/example.jpg"),
            "Fails to return URL for the largest width"
        )
        XCTAssertEqual(
            image.largestImageUrl(upTo: 250),
            URL(string: "https://example.invalid/img/200/example.jpg"),
            "Fails to return the largest width up to the specified maximum"
        )
        XCTAssertEqual(
            image.largestImageUrl(upTo: 200),
            URL(string: "https://example.invalid/img/200/example.jpg"),
            "Fails to return the largest width when equal to the specified maximum"
        )
    }

    func testInvalidSizingMethods() throws {
        let image = self.getFDImage(sizingMethod: .unknown)

        XCTAssertEqual(
            image.largestImageUrl,
            URL(string: "https://example.invalid/img/{width}/example.jpg"),
            "Fails to return an unmodified URL for an unrecognised sizing method"
        )
        XCTAssertEqual(
            image.largestImageUrl(upTo: 250),
            URL(string: "https://example.invalid/img/{width}/example.jpg"),
            "Fails to return an unmodified URL for an unrecognised sizing method"
        )
    }

    private func getFDImage(sizingMethod: FDImageSizingMethodType) -> FDImage {
        return FDImage(
            source: FDImageSource(
                url: "https://example.invalid/img/{width}/example.jpg",
                sizingMethod: FDImageSizingMethod(
                    type: sizingMethod,
                    widthToken: "{width}",
                    widths: [
                        100,
                        200,
                        300
                    ]
                )
            )
        )
    }
}
