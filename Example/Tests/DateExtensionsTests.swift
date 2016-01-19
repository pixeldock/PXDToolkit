//
//  DateExtensionsTests.swift
//  PXDToolkit
//
//  Created by Jörn Schoppe on 19.01.16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import PXDToolkit

class DateExtensionsTests: XCTestCase {
    
    func testEqualDates() {
        let dateA = NSDate(timeIntervalSince1970: 0)
        let dateB = NSDate(timeIntervalSince1970: 0)
        
        XCTAssert(dateA == dateB)
        XCTAssertFalse(dateA < dateB)
        XCTAssertFalse(dateA > dateB)
    }
    
    func testDifferentDates() {
        let dateA = NSDate(timeIntervalSince1970: 0)
        let dateB = NSDate(timeIntervalSince1970: 100)
        
        XCTAssertFalse(dateA == dateB)
        XCTAssert(dateA < dateB)
        XCTAssertFalse(dateA > dateB)
    }
}
