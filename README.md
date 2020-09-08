![Project Logo](./Logo.png)

![License MIT](https://img.shields.io/github/license/LenisDev/UIKitCore)
![CI Tests](https://github.com/LenisDev/UIKitCore/workflows/GHActionCI/badge.svg)
![Carthage compatibility](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat")
![pod](https://img.shields.io/cocoapods/v/UIKitCore.svg)
![Plateform compatibility](https://img.shields.io/cocoapods/p/UIKitCore)

- [Overview](#overview)
- [Usage](#usage)
- [Installation Guide](#installation-guide)
- [Full Documentation](https://lenisdev.github.io/UIKitCore/index.html)
- [Contribute](#contribute)

### Overview
Base MVVM, helper functions and extensions

Checkout [example project](https://github.com/LenisDev/FloatingInput/tree/master/Examples)
### Usage
```swift

  // Step 1 - Import
  import UIKitCore
  
  // Step 2 - Use
  // constraints
  myLabel
    .add(to: parentView)
    .centerX(to: parentView.centerX)
    .centerY(to: parentView.centerY)
    .with(width: 200, height: 100)
    
  // extensions
  myView.layer.border(.gray, width: 1, edge: .all)
  
  // register cells
  myCollectionView.register(CustomCell.self)
  
```

checkout [extensions](https://lenisdev.github.io/UIKitCore/Extensions.html) for more

<br>

### Installation Guide

#### Carthage

Step 1: 
Add following to your CartFile

```
github "LenisDev/UIKitCore" ~> 0.0.2
```

Step 2:
run `carthage update` from current project directory.

*That's all, you have it installed.*

<br>

#### CocoaPods

Step 1:
Add `pod 'UIKitCore', '~> 0.0.2'` to your Podfile:

```
target 'MyApp' do
  pod 'UIKitCore', '~> 0.0.2'
end
```

Step 2:
run `pod install` from current project directory.

*That's all, you have it installed.*

<br>

>
>
>Try it using following command
>```
>pod try UIKitCore
>```
>

<br>

#### Swift Package Manager
```
dependencies: [
    .package(url: "https://github.com/LenisDev/UIKitCore.git", .upToNextMajor(from: "0.0.2"))
]
```

<br>

### Contribute
> - Play around and report bugs
> - Fix issues and create PR
> - Add documentations and new features
