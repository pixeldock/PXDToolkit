# PXDToolkit

[![CI Status](http://img.shields.io/travis/Jörn Schoppe/PXDToolkit.svg?style=flat)](https://travis-ci.org/Jörn Schoppe/PXDToolkit)
[![Version](https://img.shields.io/cocoapods/v/PXDToolkit.svg?style=flat)](http://cocoapods.org/pods/PXDToolkit)
[![License](https://img.shields.io/cocoapods/l/PXDToolkit.svg?style=flat)](http://cocoapods.org/pods/PXDToolkit)
[![Platform](https://img.shields.io/cocoapods/p/PXDToolkit.svg?style=flat)](http://cocoapods.org/pods/PXDToolkit)

## Requirements
iOS 8.0 or Greater

## Installation

PXDToolkit is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "PXDToolkit"
```

## Usage

<h4>Int</h4>
**Random Int between 0 and 10 **
```
let randomInt = 10.random
```
----------
<h4>Array</h4>
**Get random element from Array**
```
let randomElement = ["A", "B", "C"].randomElement
```
**Get 2 random elements from Array**
```
let randomElements = ["A", "B", "C"].randomElements(2)
```
**Shuffle array (order elements randomly)**
```
let shuffledArray = ["A", "B", "C"].shuffled
```
----------
<h4>UIColor</h4>
**Color from hex int value**
```
let darkRedColor = UIColor(hex: 0xAA0000)
```
**Hex string from Color**
```
let redColorHexString = UIColor.redColor().hexString
```
----------
<h4>CGFloat</h4>
**Degrees to Radians**
```
let angleRadians = CGFloat(180).degreesToRadians
```
**Radians to Degrees**
```
let degrees = CGFloat(3.1415).radiansToDegrees
```

## Author

Jörn Schoppe, joern@pixeldock.com

## License

PXDToolkit is available under the MIT license. See the LICENSE file for more info.
