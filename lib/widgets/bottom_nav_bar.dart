import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wifi_share/providers/app_provider.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(appStateProvider);
    return NavigationBar(
      elevation: 60,
      onDestinationSelected: (value) {
        String title = 'Wifi Share';
        if (value == 1) {
          title = 'Wifi Scan';
        } else if (value == 2) {
          title = 'Create QR';
        } else if (value == 3) {
          title = 'Open QR';
        } else {
          title = 'Wifi Share';
        }

        ref.read(appStateProvider.notifier).changeTab(value, title);
      },
      selectedIndex: currentIndex.currentTabIndex,
      animationDuration: const Duration(milliseconds: 500),
      destinations: const <Widget>[
        NavigationDestination(
          icon: Icon(Icons.qr_code_scanner),
          label: 'Wifi Share',
          selectedIcon: Icon(
            Icons.qr_code_scanner,
            color: Colors.white,
          ),
        ),
        NavigationDestination(
          icon: Icon(Icons.document_scanner),
          label: 'Wifi Scan',
          selectedIcon: Icon(
            Icons.document_scanner,
            color: Colors.white,
          ),
        ),
        NavigationDestination(
          icon: Icon(Icons.add_a_photo),
          label: 'Create QR',
          selectedIcon: Icon(
            Icons.add_a_photo,
            color: Colors.white,
          ),
        ),
        NavigationDestination(
          icon: Icon(Icons.upload_file),
          label: 'Open QR',
          selectedIcon: Icon(
            Icons.upload_file,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
