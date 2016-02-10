//
//  IntExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

// Adds a random function
public extension Int {
    
    /**
     Gets a random Int value
     
     - Returns: A random Int value between 0 and the Int (e.g. `4.random` returns 0, 1, 2 or 3)
     */
    var random: Int {
        return Int(arc4random_uniform(UInt32(self)))
    }
}
