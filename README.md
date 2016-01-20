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
**Random Int between 0 and 10**
```swift
let randomInt = 10.random
```
----------
<h4>Array</h4>
**Get random element from Array**
```swift
let randomElement = ["A", "B", "C"].randomElement
```
**Get 2 random elements from Array**
```swift
let randomElements = ["A", "B", "C"].randomElements(2)
```
**Shuffle array (order elements randomly)**
```swift
let shuffledArray = ["A", "B", "C"].shuffled
```
----------
<h4>UIColor</h4>
**Color from hex int value**
```swift
let darkRedColor = UIColor(hex: 0xAA0000)
```
**Hex string from Color**
```swift
let redColorHexString = UIColor.redColor().hexString
```
----------
<h4>CGFloat</h4>
**Degrees to Radians**
```swift
let angleRadians = CGFloat(180).degreesToRadians
```
**Radians to Degrees**
```swift
let degrees = CGFloat(3.1415).radiansToDegrees
```
----------
<h4>NSDate</h4>
**Compare dates with "<", ">" and "=="**
```swift
if dateA < dateB {
   print("dateA is the earlier date")
}
if dateA > dateB {
   print("dateA is the later date")
}
if dateA == dateB {
   print("dateA is the same date as dateB")
}
```
----------
<h4>NSLocalizedString</h4>
If your *Localizable.strings* file contains this:
```
"GREETING" = "Hello";
"TEMPERATURE" = "It is %f.01°C in %@";
```
You can do this:
**Get localized string for a key**
```swift
print(LocalizedString("GREETING")) // "Hello"
```
And this:
**Get localized string with dynamic parts**
```swift
print(LocalizedString("TEMPERATURE", arguments:[21.8, "Paris"])) // "It is 21.8°C in Paris"
```
----------
<h4>UIApplication</h4>
**Get App version**
```swift
let appVersion = UIApplication.appVersion()
```
**Get Build number**
```swift
let buildNumber = UIApplication.appBuild()
```


## Author

Jörn Schoppe, joern@pixeldock.com

## License

PXDToolkit is available under the MIT license. See the LICENSE file for more info.
