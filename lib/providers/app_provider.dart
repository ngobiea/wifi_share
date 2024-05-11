import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wifi_share/model/app_data.dart';

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(AppState(currentTabIndex: 0,title: 'Wifi Share'));
  void changeTab(int index, String title) {
    state = AppState(currentTabIndex: index,title: title);
  }
}

final appStateProvider = StateNotifierProvider<AppStateNotifier, AppState>(
  (ref) => AppStateNotifier(),
);