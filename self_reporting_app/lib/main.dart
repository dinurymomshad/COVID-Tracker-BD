import 'dart:async';
import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selfreportingapp/screens/Report/report_main.dart';
import 'package:selfreportingapp/screens/dashboard.dart';
import 'package:selfreportingapp/screens/heatmap.dart';
import 'package:selfreportingapp/screens/loading_screen.dart';
import 'package:selfreportingapp/screens/onboarding_screen.dart';
import 'initialize.dart';

void _enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() {
  /*WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);*/
  runApp(DevicePreview(builder: (context) => App()));
//  _enablePlatformOverrideForDesktop();

  //Crashlytics.instance.enableInDevMode = true;

  // Pass all uncaught errors to Crashlytics.
//  FlutterError.onError = Crashlytics.instance.recordFlutterError;

//  runZoned(() {
//  runApp(App());
//  }, onError: Crashlytics.instance.recordError);
}

/// App starts from here
/// Go to Initialize.dart file
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);*/
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- Add the locale
      builder: DevicePreview.appBuilder,
      title: 'Corona',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Quicksand'),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Initialize(),
      ),
      routes: <String, WidgetBuilder>{
        '/LoadingScreen': (BuildContext context) => new LoadingScreen(),
        '/OnBoardingScreen': (BuildContext context) => new OnBoardingScreen(),
        '/HomePage': (BuildContext context) => new HomePage(),
      },
    );
  }
}
