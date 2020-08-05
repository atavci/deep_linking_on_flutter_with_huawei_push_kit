import 'dart:async';

import 'package:deep_linking_demo/data/hms.dart';
import 'package:deep_linking_demo/screens/content_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:huawei_push/constants/channel.dart' as Channel;
import 'package:huawei_push/push.dart';
import 'package:uni_links/uni_links.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription _sub;

  String _token = '';
  static const EventChannel TokenEventChannel =
      EventChannel(Channel.TOKEN_CHANNEL);

  @override
  void initState() {
    super.initState();
    initPlatformState();
    initInitialLinks(); // initialize uni_link function
    initLinkStream();
  }

  Future<void> initPlatformState() async {
    if (!mounted) return;
    TokenEventChannel.receiveBroadcastStream()
        .listen(_onTokenEvent, onError: _onTokenError);
    await Push.getToken();
  }

  void _onTokenEvent(Object event) {
    // This function gets called when we receive the token successfully
    setState(() {
      _token = event;
    });
    print('Push Token: ' + _token);
  }

  void _onTokenError(Object error) {
    setState(() {
      _token = error;
    });
    print(_token);
  }

  Future<Null> initLinkStream() async {
    if (!mounted) return;
    _sub = getLinksStream().listen((String link) {
      print(link);
      var uri = Uri.dataFromString(link);
      String page = uri.path.split('://')[1];
      String serviceName = uri.queryParameters['name'];
      String serviceUrl = uri.queryParameters['url'];
      Navigator.of(context).pushNamed(
        page,
        arguments: ContentPageArguments(serviceName, serviceUrl),
      ); // Navigate to the page from the intent
    }, onError: (err) {
      print("Error while listening for the link stream: " + err.toString());
    });
  }

  Future<void> initInitialLinks() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      String initialLink = await getInitialLink();
      print(initialLink ?? 'NO LINK');
      if (initialLink != null) {
        print(initialLink);
        var uri = Uri.dataFromString(initialLink);
        String page = uri.path.split('://')[1];
        String serviceName = uri.queryParameters['name'];
        String serviceUrl = uri.queryParameters['url'];
        try {
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            Navigator.of(context).pushNamed(
              page,
              arguments: ContentPageArguments(serviceName, serviceUrl),
            ); // Navigate to the page from the intent
          });
        } catch (e) {
          Push.showToast(e);
        }
      }
    } on PlatformException {
      print('Error: Platform Exception');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Huawei Mobile Services"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.builder(
              itemCount: HMS.HMSMap.length,
              itemBuilder: (context, idx) => ExpansionTile(
                title: Text(
                  '${HMS.HMSMap.keys.elementAt(idx).text}',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
                children: HMS.HMSMap[HMS.HMSMap.keys.elementAt(idx)]
                    .map((e) => serviceButton(e))
                    .toList(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget serviceButton(HMS service) {
    return ListTile(
      title: Text(service.name),
      onTap: () => Navigator.of(context).pushNamed(
        '/ContentPage',
        arguments: ContentPageArguments(service.name, service.url),
      ),
    );
  }
}
