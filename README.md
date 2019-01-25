# PrettyLogger

[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/PrettyLogger.svg)](https://img.shields.io/cocoapods/v/PrettyLogger.svg)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
![Platform](https://img.shields.io/badge/platform-iOS-blue.svg?style=flat) 
![Platform](https://img.shields.io/badge/platform-tvOS-blue.svg?style=flat)
![Platform](https://img.shields.io/badge/platform-mac-blue.svg?style=flat)
[![Build Status](https://travis-ci.org/sebastianvarela/PrettyLogger.svg?branch=master)](https://travis-ci.org/sebastianvarela/PrettyLogger) [![codecov](https://codecov.io/gh/sebastianvarela/PrettyLogger/branch/master/graph/badge.svg)](https://codecov.io/gh/sebastianvarela/PrettyLogger) [![codebeat badge](https://codebeat.co/badges/1e22ecfc-f09e-4ebe-86f9-2d114633489f)](https://codebeat.co/projects/github-com-sebastianvarela-prettylogger-master)

## Introduction
A pretty set of log functions to print message in console using levels (Debug, Info, Trace, Warning & Error) and emojis to improve visibility 💪

## Platforms 
Support for iOS, tvOS and macOS

## Installation
This framework is compatible with Carthage or Cocoapods, use one of both.
### Carthage
Add this into your `Cartfile`:
```ogdl
github "sebastianvarela/PrettyLogger" 
```
### Cocoapods
Add this into your `Podfile`:
```ogdl
pod 'PrettyLogger' 
```

## Usage
### Log Messages
To print a message in console simply use any of the global functions:
```swift
  logWarning("This a warning!!")
  logError("This is showed as error")
  logFatal("This is showed as fatal message")
  logInfo("This is an info message")
  logDebug("This is a debug message")
  logTrace("This is a trace info")
```
This commands produces 
```ogdl 
13:31:59.632 ◉ ⚠️⚠️⚠️ This a warning!! [File.swift:L109]
13:31:59.639 ◉ ❌❌❌ This is showed as error [File.swift:L110]
13:31:59.639 ◉ ☠️☠️☠️ This is showed as fatal message [File.swift:L111]
13:31:59.639 ◉ 🔍 This is an info message [File.swift:L112]
13:31:59.639 ◉ 🐛 This is a debug message [File.swift:L113]
13:31:59.640 ◉ ✏️ This is a trace info [File.swift:L114]
```
### Configuring Level
You can silent all logs or some depending on level by setting level on shared instance:
```swift
PrettyLogger.shared.level = .all //To show all messages
PrettyLogger.shared.level = .disable //To silent logger
PrettyLogger.shared.level = .info //To show all message except debug & trace
```
The available levels are: disable, fatal, error, warn, info, debug, trace & all 
### Setting PrettyLogger as global framework:
If you want to import all functions in your project without import PrettyLogger in every file you could use this directive in your AppDelegate: 
```swift
@_exported import PrettyLogger
```
