import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart'; // enables webview
import 'package:flutter/services.dart'; // required to change statusbar colour

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: MyHomeScreen()
    );
  }
}


class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // set the status bar colors
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light
    ));

    return Scaffold(
      // place body in safe area so it doesn't fall under the statusbar
      body: SafeArea(
        // webview will house the website
        child: WebView(
          initialUrl: "https://www.gplore.com", // the website to display
          javascriptMode: JavascriptMode.unrestricted, // allow javascript
        ),
      ),
    );
  }
}