//
//  FloatExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

// Adds Degrees / Radians conversion functions
public extension CGFloat {
    
    /**
     Converts a degree value to the radians value
     
     - Returns: The value in radians
     */
    var degreesToRadians: CGFloat {
        return self * .pi / 180.0
    }
    
    /**
     Converts a radians value to the degree value
     
     - Returns: The value in degrees
     */
    var radiansToDegrees: CGFloat {
        return self * 180.0 / .pi
    }
}
