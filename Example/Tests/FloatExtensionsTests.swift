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
        XCTAssertEqual(radians, .pi)
    }
    
    func testRadiansToDegree() {
        let radians: CGFloat = .pi
        let degrees = radians.radiansToDegrees
        XCTAssertEqual(degrees, CGFloat(180))
    }
}
