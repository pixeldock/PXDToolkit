//
//  FloatExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

public extension CGFloat {
    var degreesToRadians : CGFloat {
        return self * CGFloat(M_PI) / 180.0
    }
    
    var radiansToDegrees : CGFloat {
        return self * 180.0 / CGFloat(M_PI)
    }
}
