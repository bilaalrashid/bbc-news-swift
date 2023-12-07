//
//  Logger.swift
//
//
//  Created by Bilaal Rashid on 07/12/2023.
//

#if canImport(OSLog)
import OSLog

extension Logger {
    /// The Unified Logging subsystem name
    private static var subsystem = "BbcNews"

    /// Logging related to networking
    static let network = Logger(subsystem: Logger.subsystem, category: "network")
}
#endif
