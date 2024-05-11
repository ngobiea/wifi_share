import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wifi_info_plugin_plus/wifi_info_plugin_plus.dart';

class WifiSharePage extends StatefulWidget {
  const WifiSharePage({super.key});

  @override
  State<WifiSharePage> createState() => _WifiSharePageState();
}

class _WifiSharePageState extends State<WifiSharePage> {
  WifiInfoWrapper? _wifiObject;
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    WifiInfoWrapper? wifiObject;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      wifiObject = await WifiInfoPlugin.wifiDetails;
    } on PlatformException {}
    if (!mounted) return;

    setState(() {
      _wifiObject = wifiObject;
    });
  }

  @override
  Widget build(BuildContext context) {
    String ipAddress =
        _wifiObject != null ? _wifiObject!.ipAddress.toString() : "...";

    String macAddress =
        _wifiObject != null ? _wifiObject!.macAddress.toString() : '...';
    String connectionType = _wifiObject != null
        ? _wifiObject!.connectionType.toString()
        : 'unknown';
    String ssid = _wifiObject != null ? _wifiObject!.ssid.toString() : '...';
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Center(
        child: Text('Running on IP:' + ipAddress),
      ),
      Center(
        child: Text('Running on Mac:' + macAddress),
      ),
      Center(
        child: Text('Connection type:' + connectionType),
      ),
      Center(
        child: Text('SSID:' + ssid),
      ),
    ]);
  }
}
