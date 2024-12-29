//
//  ALINLogger.swift
//  
//
//  Created by Alex Lin Segarra on 29/12/24.
//

import Foundation

public enum LogLevel: String {
    case info = "INFO"
    case warning = "WARNING"
    case error = "ERROR"
    case debug = "DEBUG"
    
    var defaultIcon: String {
        switch self {
        case .info: return "ℹ️"
        case .warning: return "⚠️"
        case .error: return "‼️"
        case .debug: return "🐛"
        }
    }
}

public protocol ALINLoggerProtocol {
    func log(message: String, level: LogLevel, icon: String?)
}

public class DefaultALINLogger: ALINLoggerProtocol {
    
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yy - HH:mm:ss"
        return formatter
    }()

    private var loggerName: String?

    public init(loggerName: String? = nil) {
        self.loggerName = loggerName
    }

    public func log(message: String, level: LogLevel, icon: String? = nil) {
        let timestamp = dateFormatter.string(from: Date())
        let logIcon = icon ?? level.defaultIcon
        if let loggerName = loggerName {
            print("\(timestamp) \(logIcon) [\(level.rawValue)] [\(loggerName)] \(message)")
        } else {
            print("\(timestamp) \(logIcon) [\(level.rawValue)] \(message)")
        }
    }
}
