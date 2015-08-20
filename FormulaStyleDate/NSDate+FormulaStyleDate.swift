//
//  NSDate+FormulaStyleDate.swift
//  FormulaStyleDate
//
//  Created by fhisa on 2015/08/20.
//  Copyright (c) 2015 Hisakuni Fujimoto. All rights reserved.
//

import Foundation

public func + (lhs: NSDate, rhs: NSTimeInterval) -> NSDate {
    return lhs.dateByAddingTimeInterval(rhs)
}

public func + (lhs: NSTimeInterval, rhs: NSDate) -> NSDate {
    return rhs.dateByAddingTimeInterval(lhs)
}

public func - (lhs: NSDate, rhs: NSTimeInterval) -> NSDate {
    return lhs.dateByAddingTimeInterval(-rhs)
}

public func - (lhs: NSDate, rhs: NSDate) -> NSTimeInterval {
    return lhs.timeIntervalSinceDate(rhs)
}

public func < (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedAscending
}

public func > (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedDescending
}

public func <= (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs == rhs || lhs < rhs
}

public func >= (lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs == rhs || lhs > rhs
}
