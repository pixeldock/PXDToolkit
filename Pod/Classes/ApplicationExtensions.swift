//
//  ApplicationExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

// Functions to access app version and build number
public extension UIApplication {
    
    /**
     Gets the current app version
     
     - Returns: A String with the app version
     */
    static func appVersion() -> String {
        guard let version = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString") as? String else { return "" }
        return version
    }
    
    /**
     Gets the current build number
     
     - Returns: A String with the current build number
     */
    static func appBuild() -> String {
        guard let build = NSBundle.mainBundle().objectForInfoDictionaryKey(String(kCFBundleVersionKey)) as? String else { return "" }
        return build
    }
}
