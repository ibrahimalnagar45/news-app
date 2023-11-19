import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Webview extends StatelessWidget {
  const Webview({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return   WebView(
      initialUrl:
          url,
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
