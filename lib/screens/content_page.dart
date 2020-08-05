import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ContentPageArguments {
  final String serviceName;
  final String serviceUrl;

  ContentPageArguments(this.serviceName, this.serviceUrl);
}

class ContentPage extends StatelessWidget {
  final String serviceName;
  final String serviceUrl;

  ContentPage({Key key, @required this.serviceName, @required this.serviceUrl})
      : super(key: key) {
    assert(serviceName != null);
    assert(serviceUrl != null);
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: serviceUrl,
      appBar: AppBar(
        title: Text(serviceName),
      ),
      withZoom: true,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('Loading.....'),
            ),
            SizedBox(
              height: 10,
            ),
            Center(child: CircularProgressIndicator())
          ],
        ),
      ),
    );
  }
}
