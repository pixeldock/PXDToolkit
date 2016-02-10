//
//  LocalizedStringExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

// Utility functions for the usage of localized strings

/**
Gets the localized string for a key

- Parameter key: The key for the string

- Returns: The localized string
*/
public func LocalizedString(key: String) -> String {
    return NSLocalizedString(key, comment: "")
}

/**
 Gets the localized string and adds runtime values to it.
 
 You can use this if you have a localized string that contains values that change during runtime.
 
 For example: "You have 4 new messages"
 
 To make this work, the String bound to the key has to use String Format Specifiers (e.g. `%d`)
 
 - Parameter key: The key for the string
 - Parameter arguments: The values that should be inserted into the string (using String Format Specifiers to insert values)
 
 - Returns: The localized string containing the values
 */
public func LocalizedString(key: String, arguments:[CVarArgType]) -> String {
    let formatString = NSLocalizedString(key, comment: "")
    return String(format: formatString, arguments: arguments)
}
