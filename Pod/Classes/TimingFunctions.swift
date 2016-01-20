//
//  TimingFunctions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 20.01.16.
//
//

import Foundation

public func delay(seconds seconds: Double, completion:() -> Void) {
    let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
    dispatch_after(dispatchTime, dispatch_get_main_queue()) {
        completion()
    }
}
