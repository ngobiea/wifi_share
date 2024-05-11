import 'package:flutter/material.dart';

class StoredWifiPage extends StatelessWidget {
  const StoredWifiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stored Wifi Page',
        ),
      ),
      body: const Center(
        child: Text(
          'Stored Wifi Page',
        ),
      ),
    );
  }
}
