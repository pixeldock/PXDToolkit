//
//  TimingFunctions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 20.01.16.
//
//

import Foundation

/**
 Delays the execution of a closure on the main thread
 
 Similar to `NSObject`'s `performSelector(_:withObject:afterDelay:)`, but always on the main thread
 
 - Parameter seconds: The length of the delay in seconds
 - Parameter completion: A closure containing the code that should be executed after the delay
 */

public func delay(seconds seconds: Double, completion:() -> Void) {
    let dispatchTime = dispatch_time(DISPATCH_TIME_NOW, Int64( Double(NSEC_PER_SEC) * seconds ))
    dispatch_after(dispatchTime, dispatch_get_main_queue()) {
        completion()
    }
}
