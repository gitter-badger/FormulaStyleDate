//
//  NSDate+FormulaStyleDate.swift
//  FormulaStyleDate
//
//  Created by fhisa on 2015/08/20.
//  Copyright (c) 2015 Hisakuni Fujimoto. All rights reserved.
//

import Foundation

public func + (date: NSDate, interval: NSTimeInterval) -> NSDate {
    return date.dateByAddingTimeInterval(interval)
}

public func + (interval: NSTimeInterval, date: NSDate) -> NSDate {
    return date.dateByAddingTimeInterval(interval)
}

public func - (date: NSDate, interval: NSTimeInterval) -> NSDate {
    return date.dateByAddingTimeInterval(-interval)
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
