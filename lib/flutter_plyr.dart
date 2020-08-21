library flutter_plyr;

import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';



// ignore: prefer_collection_literals
final Set<JavascriptChannel> jsChannels = [
  JavascriptChannel(
      name: 'Plyr',
      onMessageReceived: (JavascriptMessage message) {
        print(message.message);
      }),
].toSet();

// ignore: must_be_immutable
class Plyr extends StatelessWidget {
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
