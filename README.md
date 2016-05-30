# BXTencentOpenAPI

[![Version](https://img.shields.io/cocoapods/v/BXTencentOpenAPI.svg?style=flat)](http://cocoapods.org/pods/BXTencentOpenAPI)
[![License](https://img.shields.io/cocoapods/l/BXTencentOpenAPI.svg?style=flat)](http://cocoapods.org/pods/BXTencentOpenAPI)
[![Platform](https://img.shields.io/cocoapods/p/BXTencentOpenAPI.svg?style=flat)](http://cocoapods.org/pods/BXTencentOpenAPI)

This is a mirror repository for the official [Tencent Open API iOS SDK](http://wiki.open.qq.com/).


## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

1. Change the URL schemes of the example target to your App ID, e.g. "tencent123456789"
2. Replace the content of `kBXAppID` with your App ID
3. Run

## Requirements

* iOS 7.0 and later
* ARC


## Installation

BXTencentOpenAPI is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "BXTencentOpenAPI"
```

Follow the [guide](http://wiki.open.qq.com/wiki/IOS_API调用说明) provided by Tencent.


### iOS 9

If you're going to use SSO, add the following URL schemes to your `Info.plist` file.

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
    <!-- QQ、Qzone URL Schemes -->
    <string>mqqapi</string>
    <string>mqq</string>
    <string>mqqOpensdkSSoLogin</string>
    <string>mqqconnect</string>
    <string>mqqopensdkdataline</string>
    <string>mqqopensdkgrouptribeshare</string>
    <string>mqqopensdkfriend</string>
    <string>mqqopensdkapi</string>
    <string>mqqopensdkapiV2</string>
    <string>mqqopensdkapiV3</string>
    <string>mqzoneopensdk</string>
    <string>wtloginmqq</string>
    <string>wtloginmqq2</string>
    <string>mqqwpa</string>
    <string>mqzone</string>
    <string>mqzonev2</string>
    <string>mqzoneshare</string>
    <string>wtloginqzone</string>
    <string>mqzonewx</string>
    <string>mqzoneopensdkapiV2</string>
    <string>mqzoneopensdkapi19</string>
    <string>mqzoneopensdkapi</string>
    <string>mqqbrowser</string>
    <string>mttbrowser</string>

    <!-- Other URL Schemes in whitelist -->
</array>
```
