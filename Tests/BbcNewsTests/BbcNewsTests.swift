import XCTest
@testable import BbcNews

final class BbcNewsTests: XCTestCase {
    func testIsApiUrlString() throws {
        let invalidUrlResult = BbcNews.isApiUrl(urlString: "invalid")
        XCTAssertFalse(invalidUrlResult, "An invalid URL does not match the API")

        let differentHostResult = BbcNews.isApiUrl(urlString: "https://bilaal.co.uk")
        XCTAssertFalse(differentHostResult, "A URL with on a different hostname does not match the API")

        let tlsResult = BbcNews.isApiUrl(urlString: "https://news-app.api.bbc.co.uk/fd/abl?clientName=Chrysalis&page=cwgdx0ppwnzt&type=topic")
        XCTAssertTrue(tlsResult, "A URL on the correct hostname using HTTPS, correctly matches the API")

        // swiftlint:disable:next force_https
        let insecureResult = BbcNews.isApiUrl(urlString: "http://news-app.api.bbc.co.uk/fd/abl?clientName=Chrysalis&page=cwgdx0ppwnzt&type=topic")
        XCTAssertTrue(insecureResult, "A URL on the correct hostname using HTTP, correctly matches the API")
    }

    func testIsApiUrl() throws {
        // swiftlint:disable:next force_unwrapping
        let differentHostResult = BbcNews.isApiUrl(url: URL(string: "https://bilaal.co.uk")!)
        XCTAssertFalse(differentHostResult, "A URL with on a different hostname does not match the API")

        // swiftlint:disable:next force_unwrapping
        let tlsResult = BbcNews.isApiUrl(url: URL(string: "https://news-app.api.bbc.co.uk/fd/abl?clientName=Chrysalis&page=cwgdx0ppwnzt&type=topic")!)
        XCTAssertTrue(tlsResult, "A URL on the correct hostname using HTTPS, correctly matches the API")

        // swiftlint:disable:next force_https force_unwrapping
        let insecureResult = BbcNews.isApiUrl(url: URL(string: "http://news-app.api.bbc.co.uk/fd/abl?clientName=Chrysalis&page=cwgdx0ppwnzt&type=topic")!)
        XCTAssertTrue(insecureResult, "A URL on the correct hostname using HTTP, correctly matches the API")
    }

    func testConvertWebUrlStringToApi() throws {
        XCTAssertEqual(
            BbcNews.convertWebUrlToApi(urlString: "https://www.bbc.co.uk/news/uk-politics-68983472.app"),
            "https://news-app.api.bbc.co.uk/fd/app-article-api?clientName=Chrysalis&clientVersion=pre-7&page=https://www.bbc.co.uk/news/uk-politics-68983472.app"
        )

        XCTAssertEqual(
            BbcNews.convertWebUrlToApi(urlString: "https://www.bbc.co.uk/news/world-europe-18023383.app"),
            "https://news-app.api.bbc.co.uk/fd/app-article-api?clientName=Chrysalis&clientVersion=pre-7&page=https://www.bbc.co.uk/news/world-europe-18023383.app"
        )

        XCTAssertEqual(
            BbcNews.convertWebUrlToApi(urlString: "https://www.bbc.com/news/articles/c289n8m4j19o.app"),
            "https://news-app.api.bbc.co.uk/fd/app-article-api?clientName=Chrysalis&clientVersion=pre-7&page=https://www.bbc.com/news/articles/c289n8m4j19o.app"
        )

        XCTAssertEqual(
            BbcNews.convertWebUrlToApi(urlString: "https://www.bbc.co.uk/news/uk-politics-68983472"),
            "https://news-app.api.bbc.co.uk/fd/app-article-api?clientName=Chrysalis&clientVersion=pre-7&page=https://www.bbc.co.uk/news/uk-politics-68983472"
        )

        XCTAssertEqual(
            BbcNews.convertWebUrlToApi(urlString: "https://bilaal.co.uk"),
            nil
        )
    }

    func testConvertWebUrlToApi() throws {
        XCTAssertEqual(
            // swiftlint:disable:next force_unwrapping
            BbcNews.convertWebUrlToApi(url: URL(string: "https://www.bbc.co.uk/news/uk-politics-68983472.app")!),
            URL(string: "https://news-app.api.bbc.co.uk/fd/app-article-api?clientName=Chrysalis&clientVersion=pre-7&page=https://www.bbc.co.uk/news/uk-politics-68983472.app")
        )

        XCTAssertEqual(
            // swiftlint:disable:next force_unwrapping
            BbcNews.convertWebUrlToApi(url: URL(string: "https://www.bbc.co.uk/news/world-europe-18023383.app")!),
            URL(string: "https://news-app.api.bbc.co.uk/fd/app-article-api?clientName=Chrysalis&clientVersion=pre-7&page=https://www.bbc.co.uk/news/world-europe-18023383.app")
        )

        XCTAssertEqual(
            // swiftlint:disable:next force_unwrapping
            BbcNews.convertWebUrlToApi(url: URL(string: "https://www.bbc.com/news/articles/c289n8m4j19o.app")!),
            URL(string: "https://news-app.api.bbc.co.uk/fd/app-article-api?clientName=Chrysalis&clientVersion=pre-7&page=https://www.bbc.com/news/articles/c289n8m4j19o.app")
        )

        XCTAssertEqual(
            // swiftlint:disable:next force_unwrapping
            BbcNews.convertWebUrlToApi(url: URL(string: "https://www.bbc.co.uk/news/uk-politics-68983472")!),
            URL(string: "https://news-app.api.bbc.co.uk/fd/app-article-api?clientName=Chrysalis&clientVersion=pre-7&page=https://www.bbc.co.uk/news/uk-politics-68983472")
        )

        XCTAssertEqual(
            // swiftlint:disable:next force_unwrapping
            BbcNews.convertWebUrlToApi(url: URL(string: "https://bilaal.co.uk")!),
            nil
        )
    }
}
