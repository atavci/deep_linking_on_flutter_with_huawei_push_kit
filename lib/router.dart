import 'package:deep_linking_demo/screens/content_page.dart';
import 'package:deep_linking_demo/screens/home_page.dart';
import 'package:flutter/material.dart';

class Router {
  static const String HomePageRoute = '/';
  static const String ContentPageRoute = '/ContentPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePageRoute:
        return MaterialPageRoute(builder: (context) => HomePage());
      case ContentPageRoute:
        final ContentPageArguments args = settings.arguments;
        return MaterialPageRoute(
          builder: (context) => ContentPage(
            serviceName: args.serviceName,
            serviceUrl: args.serviceUrl,
          ),
        );
      default:
        // Error the named route doesn't exist
        return MaterialPageRoute(builder: (context) => HomePage());
    }
  }
}
