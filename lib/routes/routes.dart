import 'package:flutter/material.dart';
import 'package:wifi_share/pages/about.dart';
import 'package:wifi_share/pages/home.dart';
import 'package:wifi_share/pages/stored_wifi.dart';

class RouteManager {
  static const String home = '/';
  static const String storedWifi = '/stored';
  static const String about = '/about';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case storedWifi:
        return MaterialPageRoute(builder: (_) => const StoredWifiPage());
      case about:
        return MaterialPageRoute(builder: (_) => const AboutPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
