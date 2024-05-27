//
//  FDCallToActionBanner.swift
//  BbcNews
//
//  Created by Bilaal Rashid on 27/05/2024.
//

import Foundation

/// A banner that leads the user towards a call-to-action.
public struct FDCallToActionBanner: Codable, Equatable, Hashable {
    /// Used for decoding `FDItem`. This is always `CallToActionBanner`.
    internal let type: String

    /// The title of the call-to-action-banner.
    public var title: String

    /// The subtitle of the call-to-action banner.
    public var subtitle: String

    /// The buttons that the user is direct towards.
    public var buttons: [FDCallToActionButton]

    /// Creates a new call-to-action banner.
    ///
    /// - Parameters:
    ///   - title: The title of the call-to-action-banner.
    ///   - subtitle: The subtitle of the call-to-action banner.
    ///   - buttons: The buttons that the user is direct towards.
    public init(title: String, subtitle: String, buttons: [FDCallToActionButton]) {
        self.type = "CallToActionBanner"
        self.title = title
        self.subtitle = subtitle
        self.buttons = buttons
    }
}
