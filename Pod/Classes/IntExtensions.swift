//
//  IntExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

public extension Int {
    var random: Int {
        return Int(arc4random_uniform(UInt32(self)))
    }
}
