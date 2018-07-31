#  Rotation

Example project to show how to control the rotation of your application's view controllers.

Based on [Swift 100 Days: Project 24 - How To Rotate Only One ViewController to Landscape Orientation?](https://medium.com/@sunnyleeyun/swift-100-days-project-24-portrait-landscape-how-to-allow-rotate-in-one-vc-d717678301c1). This version is using protocols and extensions and 

## Files of interest

- [Rotation/UIViewController+Extensions.swift](Rotation/UIViewController+Extensions.swift)
- [Rotation/AppDelegate.swift](Rotation/AppDelegate.swift) 
- [Rotation/RotationEnabled.swift](Rotation/RotationEnabled.swfit)
- [Rotation/SecondViewController.swift](Rotation/SecondViewController.swift)

## Implementation

1. Create the UIViewController extension to determine the top most presented view controller.
1. Create the RotationEnabled protocol to mark each ViewController that supports rotation.
1. Implement in the AppDelegate the method `func application(UIApplication, supportedInterfaceOrientationsFor: UIWindow?) -> UIInterfaceOrientationMask` to report the supported orientations.
1. Mark each view controller that should support rotation with the RotationEnabled protocol
and implement the `canRotate` requirement and add code to viewWillDisappear to reset
the rotation to portrait when the view will disappear from the screen.
    if (self.isMovingFromParent) {
        UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
    }

