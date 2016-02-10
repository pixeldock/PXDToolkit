//
//  DateExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

// Utility functions to compare two NSDate objects

/**
Checks if two date objects have the same date

- Parameter lhs: The left hand side NSDate object
- Parameter rhs: The right hand side NSDate object

- Returns: `true` if the two objects share the same date
*/
public func ==(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs === rhs || lhs.compare(rhs) == .OrderedSame
}

/**
 Checks if the left NSDate object has an earlier date than the right NSDate object
 
 - Parameter lhs: The left hand side NSDate object
 - Parameter rhs: The right hand side NSDate object
 
 - Returns: `true` if the left NSDate object has an earlier date than the right NSDate object
 */
public func <(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedAscending
}

/**
 Checks if the left NSDate object has a later date than the right NSDate object
 
 - Parameter lhs: The left hand side NSDate object
 - Parameter rhs: The right hand side NSDate object
 
 - Returns: `true` if the left NSDate object has a later date than the right NSDate object
 */
public func >(lhs: NSDate, rhs: NSDate) -> Bool {
    return lhs.compare(rhs) == .OrderedDescending
}
