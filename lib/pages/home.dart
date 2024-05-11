import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wifi_share/providers/app_provider.dart';
import 'package:wifi_share/widgets/bottom_nav_bar.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  List<PopupMenuEntry<void Function()>> _buildPopupItems(context) {
    return [
      PopupMenuItem(
          value: () => {
          Navigator.of(context).pushNamed('/stored')
          },
          child: const Row(
            children: [
              Icon(Icons.wifi),
              SizedBox(width: 10),
              Text('Stored Wifi'),
            ],
          )),
      const PopupMenuDivider(),
      PopupMenuItem(
          value: () => {
          Navigator.of(context).pushNamed('/about')
          },
          child: const Row(
            children: [
              Icon(Icons.info_outline),
              SizedBox(width: 10),
              Text('Item 2'),
            ],
          )),
    ];
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appStateProvider);
    appState.pages[appState.currentTabIndex];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            appState.title,
          ),
          actions: [
            PopupMenuButton<void Function()>(
              icon: const Icon(Icons.more_vert),
              itemBuilder: _buildPopupItems,
              onSelected: (item) => item.call(),
               position: PopupMenuPosition.under,
            ),
          ],
          backgroundColor: Colors.white,
          foregroundColor: Colors.blueGrey,
        ),
        body: appState.pages[appState.currentTabIndex],
        bottomNavigationBar: const BottomNavBar());
  }
}
