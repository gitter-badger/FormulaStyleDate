//
//  FormulaStyleDateTests.swift
//  FormulaStyleDateTests
//
//  Created by fhisa on 2015/08/20.
//  Copyright (c) 2015 Hisakuni Fujimoto. All rights reserved.
//

import Foundation
import XCTest
import FormulaStyleDate

class FormulaStyleDateTests: XCTestCase {

    var now: NSDate!
    var before: NSDate!
    var after: NSDate!

    override func setUp() {
        super.setUp()
        now = NSDate()
        before = now.dateByAddingTimeInterval(-60.0)
        after = now.dateByAddingTimeInterval(60.0)
    }
    
    override func tearDown() {
        super.tearDown()
    }

    // MARK: - test

    func test_date_plus_interval() {
        let expected = now.dateByAddingTimeInterval(60.0)
        XCTAssertEqual(now + NSTimeInterval(60.0), expected)
    }

    func test_interval_plus_date() {
        let expected = now.dateByAddingTimeInterval(60.0)
        XCTAssertEqual(NSTimeInterval(60.0) + now, expected)
    }
}
