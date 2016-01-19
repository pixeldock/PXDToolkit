//
//  ArrayExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

public extension Array {
    var randomElement: Element {
        return self[count.random]
    }
    
    func randomElements(numElements: Int) -> [Element] {
        return Array(self.shuffled.prefix(numElements))
    }
    
    var shuffled: [Element] {
        var shuffledArray = self
        shuffledArray.enumerate().forEach { (index, element) in
            let otherIndex = count.random
            if otherIndex != index {
                swap(&shuffledArray[index], &shuffledArray[otherIndex])
            }
        }
        return shuffledArray
    }
}
