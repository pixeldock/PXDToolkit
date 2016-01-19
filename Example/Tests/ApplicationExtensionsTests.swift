//
//  ApplicationExtensionsTests.swift
//  PXDToolkit
//
//  Created by Jörn Schoppe on 19.01.16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import PXDToolkit

class ApplicationExtensionsTests: XCTestCase {

    func testApplicationVersion() {
        let appVersion = UIApplication.appVersion()
        XCTAssertEqual(appVersion, "1.0")
    }
    
    func testApplicationBuild() {
        let appBuild = UIApplication.appBuild()
        XCTAssertEqual(appBuild, "1")
    }
}
