//
//  ArrayExtensions.swift
//  PXDToolbox
//
//  Created by Jörn Schoppe on 19.01.16.
//
//

import Foundation

// Some functions for randomizing an Array
public extension Array {
    
    /**
     Gets a random element of an Array
     
     - Returns: A random element
     */
    var randomElement: Element {
        return self[count.random]
    }
    
    /**
     Gets several random elements of an Array
     
     - Parameter numElements: The number of random elements.
     
     - Returns: An Array of random elements from the Array
     */
    func randomElements(numElements: Int) -> [Element] {
        return Array(self.shuffled.prefix(numElements))
    }
    
    /**
     Randomize the order of elements in an Array
     
     - Returns: An Array with the same elements in a random order
     */
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
