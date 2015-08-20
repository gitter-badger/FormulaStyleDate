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

    let interval = NSTimeInterval(60.0)
    var now: NSDate!
    var before: NSDate!
    var after: NSDate!

    override func setUp() {
        super.setUp()
        now = NSDate()
        before = now.dateByAddingTimeInterval(-interval)
        after = now.dateByAddingTimeInterval(interval)
    }
    
    override func tearDown() {
        super.tearDown()
    }

    // MARK: - test

    func test_date_plus_interval() {
        XCTAssertEqual(now + interval, after)
        XCTAssertEqual(now + (-interval), before)
    }

    func test_interval_plus_date() {
        XCTAssertEqual(interval + now, after)
        XCTAssertEqual((-interval) + now, before)
    }

    func test_date_minus_interval() {
        XCTAssertEqual(now - interval, before)
        XCTAssertEqual(now - (-interval), after)
    }

    func test_date_minus_date() {
        XCTAssertEqual(after - now, NSTimeInterval(interval))
        XCTAssertEqual(now - before, NSTimeInterval(interval))
        XCTAssertEqual(before - now, NSTimeInterval(-interval))
        XCTAssertEqual(now - after, NSTimeInterval(-interval))
        XCTAssertEqual(now - now, NSTimeInterval(0))
    }

    func test_date_equal_date() {
        XCTAssertTrue(now == now)
        XCTAssertFalse(now == after)
        XCTAssertFalse(now == before)
    }

    func test_date_not_equal_date() {
        XCTAssertFalse(now != now)
        XCTAssertTrue(now != after)
        XCTAssertTrue(now != before)
    }

    func test_date_less_than_date() {
        XCTAssertTrue(before < now)
        XCTAssertTrue(now < after)
        XCTAssertFalse(after < now)
        XCTAssertFalse(now < before)
    }

    func test_date_greater_than_date() {
        XCTAssertTrue(after > now)
        XCTAssertTrue(now > before)
        XCTAssertFalse(before > now)
        XCTAssertFalse(now > after)
    }

    func test_date_less_than_or_equal_date() {
        XCTAssertTrue(before <= now)
        XCTAssertTrue(now <= after)
        XCTAssertFalse(after <= now)
        XCTAssertFalse(now <= before)
        XCTAssertTrue(before <= before)
        XCTAssertTrue(now <= now)
        XCTAssertTrue(after <= after)
    }

    func test_date_greater_than_or_equal_date() {
        XCTAssertTrue(after >= now)
        XCTAssertTrue(now >= before)
        XCTAssertFalse(before >= now)
        XCTAssertFalse(now >= after)
        XCTAssertTrue(before >= before)
        XCTAssertTrue(now >= now)
        XCTAssertTrue(after >= after)
    }
}
