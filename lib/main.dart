import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  WebViewController _controller;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      debugShowCheckedModeBanner: false,    
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text("WebView"),
        // ),
        body: SafeArea(child: 
        Center(
          child: WebView(
            initialUrl: 'https://lifestyleug.com/',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
          ),
        ),
      ),
      ),
    );
  }
}