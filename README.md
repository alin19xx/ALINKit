# ALINKit
A personal utility library designed to improve my development workflow and make everyday coding tasks easier.  
ALINKit includes reusable components for logging, networking, UI utilities, and more.

## ALINKitLogger
- **Log Levels:** Includes predefined log levels (`info`, `warning`, `error`, `debug`).
- **Icons:** Each log level is associated with a default icon for better readability.
- **Timestamps:** Logs include a timestamp formatted as `dd/MM/yy - HH:mm:ss`.
- **Custom Logger Names:** You can name your logger to distinguish between different components of your application.
- **Easy Subclassing:** Extend the default logger to add custom behaviors.

---

## Usage

### Import the Library
First, import `ALINKitLogger` in your Swift file:
```swift
import ALINKitLogger
```

### Create a Default Logger
You can create a default logger like this:
```swift
let logger = DefaultALINLogger(loggerName: "MyComponent")

// Log messages with different levels
logger.log(message: "This is an informational message.", level: .info)
logger.log(message: "This is a warning!", level: .warning)
logger.log(message: "An error occurred!", level: .error)
logger.log(message: "Debugging the application.", level: .debug)
```

### Output Example
Here’s what the logs will look like:
```
29/12/24 - 18:45:00 ℹ️ [INFO] [MyComponent] This is an informational message.
29/12/24 - 18:46:00 ⚠️ [WARNING] [MyComponent] This is a warning!
29/12/24 - 18:47:00 ‼️ [ERROR] [MyComponent] An error occurred!
29/12/24 - 18:48:00 🐛 [DEBUG] [MyComponent] Debugging the application.
```

## Changelog

### Version 0.0.1
- Initial release of `ALINKitLogger`:
    - Added predefined log levels (`info`, `warning`, `error`, `debug`).
    - Included customizable logger names.
    - Logs include timestamps and default icons.
