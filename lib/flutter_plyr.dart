library flutter_plyr;

import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

const kAndroidUserAgent =
    'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36';

String selectedUrl = 'https://flutter.io';

// ignore: prefer_collection_literals
final Set<JavascriptChannel> jsChannels = [
  JavascriptChannel(
      name: 'Print',
      onMessageReceived: (JavascriptMessage message) {
        print(message.message);
      }),
].toSet();

// ignore: must_be_immutable
class Plyr extends StatelessWidget {
  Map data;
  String videoID;
  Plyr(this.videoID);
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plyr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WebviewScaffold(
        url: 'https://royaliosvideoplayer.web.app/$videoID',
        javascriptChannels: jsChannels,
        mediaPlaybackRequiresUserGesture: false,
        withZoom: true,
        withLocalStorage: true,
        hidden: true,
        initialChild: Container(
          color: Colors.white,
          child: const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
