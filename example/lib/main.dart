import 'package:flutter/material.dart';
import 'package:flutter_plyr/flutter_plyr.dart';


void main() {
  runApp(PlyrVideoPlayer());
}

class PlyrVideoPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            child: Plyr('AGBjI0x9VbM')),
      ),
    );
  }
}

