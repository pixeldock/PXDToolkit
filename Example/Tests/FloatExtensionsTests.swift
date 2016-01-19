//
//  FloatExtensionsTests.swift
//  PXDToolkit
//
//  Created by Jörn Schoppe on 19.01.16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import PXDToolkit

class FloatExtensionsTests: XCTestCase {
    
    func testDegreesToRadians() {
        let degrees: CGFloat = 180
        let radians = degrees.degreesToRadians
        XCTAssertEqual(radians, CGFloat(M_PI))
    }
    
    func testRadiansToDegree() {
        let radians: CGFloat = CGFloat(M_PI)
        let degrees = radians.radiansToDegrees
        XCTAssertEqual(degrees, CGFloat(180))
    }
}
