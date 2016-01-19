//
//  ColorExtensionsTest.swift
//  PXDToolkit
//
//  Created by Jörn Schoppe on 19.01.16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import PXDToolkit

class ColorExtensionsTest: XCTestCase {
    
    func testColorWithHexValue() {
        let color = UIColor(hex: 0xAABBCC)
        
        XCTAssertEqual(color.hexString, "#aabbcc")
    }
}
