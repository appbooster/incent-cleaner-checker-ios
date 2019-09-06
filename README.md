# incent-cleaner-checker-ios

Framework for IncentCleaner check.

## Installation

Need to install an appropriate version of the framework according to your Xcode version:
1) Get the major version of Xcode e.g. `10`
2) CocoaPods:

```
pod 'IncentCleanerChecker', '<LAST_RELEASE_VERSION>-xcode<MAJOR_VERSION_OF_XCODE>' # e.g. `1.0.0-xcode10`
```

## Usage

1) Install the app with IncentCleaner. Do not open it. If you already opened the app please delete and install the app again.
2) Import `IncentCleanerChecker`
```
import IncentCleanerChecker
```
3) Start listening to IncentCleaner
```
Listener.shared()?.start { text in }
```
4) In the closure from step 3 you should see the message:
```
[IncentCleanerChecker] Listener is started.
```
5) Try to open the app with IncentCleaner by bundle identifier
```
_ = Opener.shared()?.openApp(withBundleId: "<BUNDLE_IDENTIFIER>")
```
6) The app should be opened. If not please check the bundle identifier on step 4 and do this step again
7) In the checker app in the closure from step 3 you should see the message:
```
[IncentCleanerChecker] Response from IncentCleaner in the app with bundleId "<BUNDLE_IDENTIFIER>" is received.
```

==================================================

You can see the example of usage in the attached project.