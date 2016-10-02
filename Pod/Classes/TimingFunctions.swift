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

public func delay(seconds: Double, completion:@escaping () -> Void) {
    let dispatchTime = DispatchTime.now() + Double(Int64( Double(NSEC_PER_SEC) * seconds )) / Double(NSEC_PER_SEC)
    DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
        completion()
    }
}
