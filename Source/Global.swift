import Foundation

@discardableResult
public func logFatal(_ items: Any..., separator: String? = nil, terminator: String? = nil, file: String = #file, line: Int = #line, column: Int = #column, function: String = #function) -> String? {
    return PrettyLogger.shared.logFatal(items, separator: separator, terminator: terminator, file: file, line: line, column: column, function: function)
}

@discardableResult
public func logError(_ items: Any..., separator: String? = nil, terminator: String? = nil, file: String = #file, line: Int = #line, column: Int = #column, function: String = #function) -> String? {
    return PrettyLogger.shared.logError(items, separator: separator, terminator: terminator, file: file, line: line, column: column, function: function)
}

@discardableResult
public func logWarning(_ items: Any..., separator: String? = nil, terminator: String? = nil, file: String = #file, line: Int = #line, column: Int = #column, function: String = #function) -> String? {
    return PrettyLogger.shared.logWarning(items, separator: separator, terminator: terminator, file: file, line: line, column: column, function: function)
}

@discardableResult
public func logInfo(_ items: Any..., separator: String? = nil, terminator: String? = nil, file: String = #file, line: Int = #line, column: Int = #column, function: String = #function) -> String? {
    return PrettyLogger.shared.logInfo(items, separator: separator, terminator: terminator, file: file, line: line, column: column, function: function)
}

@discardableResult
public func logDebug(_ items: Any..., separator: String? = nil, terminator: String? = nil, file: String = #file, line: Int = #line, column: Int = #column, function: String = #function) -> String? {
    return PrettyLogger.shared.logDebug(items, separator: separator, terminator: terminator, file: file, line: line, column: column, function: function)
}

@discardableResult
public func logTrace(_ items: Any..., separator: String? = nil, terminator: String? = nil, file: String = #file, line: Int = #line, column: Int = #column, function: String = #function) -> String? {
    return PrettyLogger.shared.logTrace(items, separator: separator, terminator: terminator, file: file, line: line, column: column, function: function)
}
