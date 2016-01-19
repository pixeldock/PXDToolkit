//
//  ApplicationExtenstions.swift
//  Pods
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

public extension UIApplication {
    
    static func appVersion() -> String {
        guard let version = NSBundle.mainBundle().objectForInfoDictionaryKey("CFBundleShortVersionString") as? String else { return "" }
        return version
    }
    
    static func appBuild() -> String {
        guard let build = NSBundle.mainBundle().objectForInfoDictionaryKey(String(kCFBundleVersionKey)) as? String else { return "" }
        return build
    }
}
