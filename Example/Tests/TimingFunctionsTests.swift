//
//  TimingFunctionsTests.swift
//  PXDToolkit
//
//  Created by Jörn Schoppe on 20.01.16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest
import PXDToolkit

class TimingFunctionsTests: XCTestCase {

    func testDelay() {
        let expectation = self.expectation(description: "Did call completion")
        delay(seconds: 0.2) {
            expectation.fulfill()
        }

        waitForExpectations(timeout: 0.4, handler: nil)
    }
}
