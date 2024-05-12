//
//  SchemaTests.swift
//  BbcNewsTests
//
//  Created by Bilaal Rashid on 04/05/2024.
//

import XCTest
@testable import BbcNews

final class SchemaTests: XCTestCase {
    func testFDResult() async throws {
        // Ignore call-to-action banner, which we don't support
        try self.executeResultTest(file: "IndexDiscovery", unknownIndexesToIgnore: [35])
        try self.executeResultTest(file: "Topic")
        try self.executeResultTest(file: "Story")
        try self.executeResolverResultTest(file: "ResolverResponse")
    }

    private func executeResultTest(file: String, unknownIndexesToIgnore: [Int] = []) throws {
        XCTAssertNoThrow(try self.decode(FDResult.self, file: file), "Failed to decode \(file) to FDResult")

        let indexDiscovery = try self.decode(FDResult.self, file: file)
        for (index, item) in indexDiscovery.data.items.enumerated() {
            if unknownIndexesToIgnore.contains(index) {
                continue
            }

            XCTAssertNotEqual(item, .unknown, "Failed to decode \(file) FDItem at index \(index) as non-unknown item")
        }
    }

    private func executeResolverResultTest(file: String, unknownIndexesToIgnore: [Int] = []) throws {
        XCTAssertNoThrow(try self.decode(FDResolverResult.self, file: file), "Failed to decode \(file) to FDResult")
    }

    private func decode<T: Decodable>(_ type: T.Type, file: String) throws -> T {
        guard let url = Bundle.module.url(forResource: file, withExtension: "json") else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .deferredToDate
        decoder.keyDecodingStrategy = .useDefaultKeys

        return try decoder.decode(T.self, from: data)
    }
}
