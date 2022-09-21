import Foundation

public struct PrettyLoggerOutput {
    public let level: PrettyLoggerLevel
    public let message: String
    public let file: String
    public let line: Int
    public let column: Int
    public let formatted: String
}
