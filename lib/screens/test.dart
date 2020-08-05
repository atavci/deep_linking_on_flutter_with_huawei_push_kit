import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:huawei_push/constants/channel.dart' as Channel;
import 'package:huawei_push/push.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
