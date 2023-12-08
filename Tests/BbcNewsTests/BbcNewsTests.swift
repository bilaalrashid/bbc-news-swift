import XCTest
@testable import BbcNews

final class BbcNewsTests: XCTestCase {
    func testIsApiUrl() throws {
        let invalidUrlResult = BbcNews.isAPIUrl(url: "invalid")
        XCTAssertFalse(invalidUrlResult, "An invalid URL does not match the API")

        let differentHostResult = BbcNews.isAPIUrl(url: "https://bilaal.co.uk")
        XCTAssertFalse(differentHostResult, "A URL with on a different hostname does not match the API")

        let tlsResult = BbcNews.isAPIUrl(url: "https://news-app.api.bbc.co.uk/fd/abl?clientName=Chrysalis&page=cwgdx0ppwnzt&type=topic")
        XCTAssertTrue(tlsResult, "A URL on the correct hostname using HTTPS, correctly matches the API")

        // swiftlint:disable:next force_https
        let insecureResult = BbcNews.isAPIUrl(url: "http://news-app.api.bbc.co.uk/fd/abl?clientName=Chrysalis&page=cwgdx0ppwnzt&type=topic")
        XCTAssertTrue(insecureResult, "A URL on the correct hostname using HTTP, correctly matches the API")
    }
}
