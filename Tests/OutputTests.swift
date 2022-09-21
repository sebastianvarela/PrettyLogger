import XCTest
import Combine
@testable import PrettyLogger

class OutputTests: XCTestCase {
    var cancellables = Set<AnyCancellable>()

    func testOuputText() {
        PrettyLogger.shared.level = .info
        PrettyLogger.shared.separator = " ❎ "

        let expirationComplete = expectation(description: "wait for output in output")

        var expectedOutput: String? = nil
        PrettyLogger.shared
            .output
            .delay(for: 2, scheduler: RunLoop.main)
            .sink { output in
                XCTAssertEqual(output.text, expectedOutput)
                expirationComplete.fulfill()
            }
            .store(in: &cancellables)
        
        expectedOutput = logInfo("hola holita")
                
        waitForExpectations(timeout: 10)
    }
}
