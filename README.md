# flutter_plyr

simple plyr for play youtube videos inline

## Getting Started

For help getting started with Flutter, view our online documentation.
## iOS
In order for plugin to work correctly, you need to add new key to ios/Runner/Info.plist
```
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
    <key>NSAllowsArbitraryLoadsInWebContent</key>
    <true/>
</dict>
```
NSAllowsArbitraryLoadsInWebContent is for iOS 10+ and NSAllowsArbitraryLoads for iOS 9.
## Android

Android API 20 and above (From Android 5.0)

## How it works

You can directly apply Youtube Video ID

![Image of Yaktocat](https://tlgur.com/d/GZDM1j54)
![Image of Yaktocat](https://tlgur.com/d/GXMzmAlg)

```
MaterialApp(
      home: Scaffold(
        body: Container(
            child: Plyr('AGBjI0x9VbM')), //VideoID
      ),
    );
```



## Future Update: Vimeo Support