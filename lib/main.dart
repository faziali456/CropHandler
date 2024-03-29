import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'image_before_after_crop.dart';
import 'package:flutter/foundation.dart' show debugDefaultTargetPlatformOverride;
import 'dart:io';

void _desktopInitHack() {
  bool isWeb = identical(0, 0.0);
  if (isWeb) return;

  if (Platform.isMacOS) {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  } else if (Platform.isLinux || Platform.isWindows) {
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
  } else if (Platform.isFuchsia) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  _desktopInitHack();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final title = 'Flutter Cropping';
  final image = AssetImage('images/cat.jpg');





  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(title: Text(title)),
          body:
              Column(
                children: <Widget>[
                 Expanded(child:ImageBeforeAfterCrop(image)),

                ],
              )
        ),
      );
}
