# DifferentTypeApiCalling
I've create API different coding way.My ability to use and manipulate a RESTFul Api and Second Api json with added AlmoFire Package.
I've worked two different way calling API,focused Api Content -Type and ArrayStructure. 

![Screenshot 2022-11-21 at 2 33 46 PM](https://user-images.githubusercontent.com/109663223/203032032-7f27f3ef-66e6-4b73-80d6-86d0e83058db.png)


Installation

CocoaPods
CocoaPods is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Alamofire into your Xcode project using CocoaPods, specify it in your Podfile:
pod 'Alamofire'

Carthage
Carthage is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks. To integrate Alamofire into your Xcode project using Carthage, specify it in your Cartfile:
github "Alamofire/Alamofire"

Swift Package Manager
The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler.
Once you have your Swift package set up, adding Alamofire as a dependency is as easy as adding it to the dependencies value of your Package.swift.
dependencies: [
    .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.1"))
]
Manually
If you prefer not to use any of the aforementioned dependency managers, you can integrate Alamofire into your project manually.
Embedded Framework
Open up Terminal, cd into your top-level project directory, and run the following command "if" your project is not initialized as a git repository:
$ git init
Add Alamofire as a git submodule by running the following command:
$ git submodule add https://github.com/Alamofire/Alamofire.git
Open the new Alamofire folder, and drag the Alamofire.xcodeproj into the Project Navigator of your application's Xcode project.

It should appear nested underneath your application's blue project icon. Whether it is above or below all the other Xcode groups does not matter.
Select the Alamofire.xcodeproj in the Project Navigator and verify the deployment target matches that of your application target.

Next, select your application project in the Project Navigator (blue project icon) to navigate to the target configuration window and select the application target under the "Targets" heading in the sidebar.

In the tab bar at the top of that window, open the "General" panel.

Click on the + button under the "Embedded Binaries" section.

You will see two different Alamofire.xcodeproj folders each with two different versions of the Alamofire.framework nested inside a Products folder.

It does not matter which Products folder you choose from, but it does matter whether you choose the top or bottom Alamofire.framework.
Select the top Alamofire.framework for iOS and the bottom one for macOS.

You can verify which one you selected by inspecting the build log for your project. The build target for Alamofire will be listed as Alamofire iOS, Alamofire macOS, Alamofire tvOS, or Alamofire watchOS.
And that's it!

The Alamofire.framework is automagically added as a target dependency, linked framework and embedded framework in a copy files build phase which is all you need to build on the simulator and a device.
