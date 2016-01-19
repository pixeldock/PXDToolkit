//
//  ColorExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

public extension UIColor {
    convenience init(hex: Int, alpha: CGFloat = 1) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: alpha)
    }
    
    var hexString: String {
        var R: CGFloat = 0
        var G: CGFloat = 0
        var B: CGFloat = 0
        var A: CGFloat = 0
        
        getRed(&R, green: &G, blue: &B, alpha: &A)
        
        let RGB = Int(Int((R * 255)) << 16) | Int(Int((G * 255)) << 8) | Int(Int((B * 255)) << 0)
        let hex = String(format: "#%06x", arguments: [RGB])
        
        return hex
    }
}
