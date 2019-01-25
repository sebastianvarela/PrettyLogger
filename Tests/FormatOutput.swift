import XCTest
@testable import PrettyLogger

class FormatOutput: XCTestCase {
    func testOutputWithTwoParameters() {
        PrettyLogger.shared.level = .info
        PrettyLogger.shared.separator = " ❎ "
        let output = logInfo("2", "3")

        XCTAssertEqual(output?.contains("2 ❎ 3"), true)
    }
}
