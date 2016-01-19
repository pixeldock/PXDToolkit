//
//  LocalizedStringExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

public func LocalizedString(key: String) -> String {
    return NSLocalizedString(key, comment: "")
}

public func LocalizedString(key: String, arguments:[CVarArgType]) -> String {
    let formatString = NSLocalizedString(key, comment: "")
    return String(format: formatString, arguments: arguments)
}