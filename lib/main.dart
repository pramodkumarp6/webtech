// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = 'Webview Demo';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: const MyAppHomePage(),
    );
  }
}

class MyAppHomePage extends StatefulWidget {
  const MyAppHomePage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

const String flutterUrl = "https://javatpoint.com/";
const String wikiUrl = "https://es.wikipedia.org";

class _MyAppState extends State<MyAppHomePage> {
  late WebViewController _controller;

  _back() async {
    if (await _controller.canGoBack()) {
      await _controller.goBack();
    }
  }

  _forward() async {
    if (await _controller.canGoForward()) {
      await _controller.goForward();
    }
  }

  _loadPage() async {
    var url = await _controller.currentUrl();
    _controller.loadUrl(
      url == "https://flutter.dev/"
          ? 'https://es.wikipedia.org'
          : "https://flutter.dev/",
    );

    print(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(' welcome to WebView'),
        actions: <Widget>[
          IconButton(
            onPressed: _back,
            icon: const Icon(Icons.arrow_back_ios),
          ),
          IconButton(
            onPressed: _forward,
            icon: const Icon(Icons.arrow_forward_ios),
          ),
          const SizedBox(width: 10),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _loadPage,
        child: const Icon(Icons.refresh),
      ),
      body: SafeArea(
        child: WebView(
          key: const Key("Welcome To WebView"),
          initialUrl: flutterUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller = webViewController;
          },
        ),
      ),
    );
  }
}
