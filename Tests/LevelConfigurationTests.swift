import XCTest
@testable import PrettyLogger

class LevelConfigurationTests: XCTestCase {
    func testLogOnAllLevels() {
        PrettyLogger.shared.level = .all
        XCTAssertNotNil(logFatal("fatal"))
        XCTAssertNotNil(logError("error"))
        XCTAssertNotNil(logWarning("warning"))
        XCTAssertNotNil(logInfo("info"))
        XCTAssertNotNil(logDebug("debug"))
        XCTAssertNotNil(logTrace("trace"))
    }

    func testLogOnDisableLogger() {
        PrettyLogger.shared.level = .disable
        XCTAssertNil(logFatal("fatal"))
        XCTAssertNil(logError("error"))
        XCTAssertNil(logWarning("warning"))
        XCTAssertNil(logInfo("info"))
        XCTAssertNil(logDebug("debug"))
        XCTAssertNil(logTrace("trace"))
    }

    func testLogOnFatalLevel() {
        PrettyLogger.shared.level = .fatal
        XCTAssertNotNil(logFatal("fatal"))
        XCTAssertNil(logError("error"))
        XCTAssertNil(logWarning("warning"))
        XCTAssertNil(logInfo("info"))
        XCTAssertNil(logDebug("debug"))
        XCTAssertNil(logTrace("trace"))
    }

    func testLogOnErrorLevel() {
        PrettyLogger.shared.level = .error
        XCTAssertNotNil(logFatal("fatal"))
        XCTAssertNotNil(logError("error"))
        XCTAssertNil(logWarning("warning"))
        XCTAssertNil(logInfo("info"))
        XCTAssertNil(logDebug("debug"))
        XCTAssertNil(logTrace("trace"))
    }

    func testLogOnWarnLevel() {
        PrettyLogger.shared.level = .warn
        XCTAssertNotNil(logFatal("fatal"))
        XCTAssertNotNil(logError("error"))
        XCTAssertNotNil(logWarning("warning"))
        XCTAssertNil(logInfo("info"))
        XCTAssertNil(logDebug("debug"))
        XCTAssertNil(logTrace("trace"))
    }

    func testLogOnInfoLevel() {
        PrettyLogger.shared.level = .info
        XCTAssertNotNil(logFatal("fatal"))
        XCTAssertNotNil(logError("error"))
        XCTAssertNotNil(logWarning("warning"))
        XCTAssertNotNil(logInfo("info"))
        XCTAssertNil(logDebug("debug"))
        XCTAssertNil(logTrace("trace"))
    }

    func testLogOnDebugLevel() {
        PrettyLogger.shared.level = .debug
        XCTAssertNotNil(logFatal("fatal"))
        XCTAssertNotNil(logError("error"))
        XCTAssertNotNil(logWarning("warning"))
        XCTAssertNotNil(logInfo("info"))
        XCTAssertNotNil(logDebug("debug"))
        XCTAssertNil(logTrace("trace"))
    }

    func testLogOnTraceLevel() {
        PrettyLogger.shared.level = .trace
        XCTAssertNotNil(logFatal("fatal"))
        XCTAssertNotNil(logError("error"))
        XCTAssertNotNil(logWarning("warning"))
        XCTAssertNotNil(logInfo("info"))
        XCTAssertNotNil(logDebug("debug"))
        XCTAssertNotNil(logTrace("trace"))
    }

    func testComparable() {
        XCTAssertTrue(PrettyLoggerLevel.info < PrettyLoggerLevel.debug)
        XCTAssertTrue(PrettyLoggerLevel.info <= PrettyLoggerLevel.info)
        XCTAssertTrue(PrettyLoggerLevel.info >= PrettyLoggerLevel.info)
        XCTAssertTrue(PrettyLoggerLevel.info > PrettyLoggerLevel.warn)

        PrettyLoggerLevel.allCases.forEach { level in
            XCTAssertTrue(level >= PrettyLoggerLevel.disable)
            XCTAssertTrue(level <= PrettyLoggerLevel.all)
        }
    }

    func testLabel() {
        PrettyLoggerLevel.allCases.forEach { level in
            switch level {
            case .warn, .fatal, .error:
                XCTAssertEqual(level.label.count, 3)
            case .info, .debug, .trace:
                XCTAssertEqual(level.label.count, 1)
            case .all, .disable:
                XCTAssertEqual(level.label.count, 0)
            }
        }
    }
}
