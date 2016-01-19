//
//  LocalizedStringTests.swift
//  PXDToolkit
//
//  Created by Jörn Schoppe on 19.01.16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import PXDToolkit

class LocalizedStringTests: XCTestCase {
    
    func testSimpleString() {
        let string = LocalizedString("THIS_IS_A_TEST")
        XCTAssertEqual(string, "THIS_IS_A_TEST")
    }
    
    func testStringWithArguments() {
        let string = LocalizedString("THIS_IS_%@", arguments: ["A_TEST"])
        XCTAssertEqual(string, "THIS_IS_A_TEST")
    }
}
