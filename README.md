# FormulaStyleDate

[![Join the chat at https://gitter.im/fhisa/FormulaStyleDate](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/fhisa/FormulaStyleDate?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/fhisa/FormulaStyleDate/master/LICENSE)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![GitHub version](https://badge.fury.io/gh/fhisa%2FFormulaStyleDate.svg)](http://badge.fury.io/gh/fhisa%2FFormulaStyleDate)
[![build passing](https://travis-ci.org/fhisa/FormulaStyleDate.png?branch=master)](https://travis-ci.org/fhisa/FormulaStyleDate)


Formula-style NSDate calculation framework for Swift.

## Code Examples

```swift
import Foundation
import FormulaStyleDate

let now = NSDate()
let before = now.dateByAddingTimeInterval(-60.0)
let after = now.dateByAddingTimeInterval(60.0)

now + 60.0 == after  // => true
60.0 + now == after  // => true

now - 60.0 == before // => true
now - before == 60.0 // => true

now < before // => false
now < after // => true

now > before // => true
now > after // => false

now <= before // => false
now <= now // => true
now <= after // => true

now >= before // => true
now >= now // => true
now >= after // => false
```

Please refer to the code for the [test case](https://github.com/fhisa/FormulaStyleDate/blob/master/FormulaStyleDateTests/FormulaStyleDateTests.swift), too.

## Requirements

- Swift 1.2 (Xcode 6.3 or later)
- iOS 8 or later (by Carthage) / iOS 7 (by coping the source files directly)

## Installation

There are two options.

### Using Carthage (iOS 8 or later)

Using [Carthage](https://github.com/Carthage/Carthage), it's easy to add FormulaStyleDate to the project.

- Add `github "fhisa/FormulaStyleDate"` to your Cartfile.
- Run `carthage update`
- Add FormulaStyleDate.framework in Carthage/Build/iOS to your Xcode project.

### Copying source files directly (iOS 7)

- Add this repository as a git submodule:
```shell
$ git submodule add https://github.com/fhisa/FormulaStyleDate.git PATH_TO_SUBMODULE
// or
$ carthage update --use-submodules
```
- Then just add references of FormulaStyleDate/*.swift to your Xcode project.

## TODO

- [CocoaPods](https://cocoapods.org) support

## license

FormulaStyleDate is released under the [MIT license](https://github.com/fhisa/FormulaStyleDate/blob/master/LICENSE).
