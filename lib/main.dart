import 'package:flutter/material.dart';
import 'package:wifi_share/routes/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.white,
          background: Colors.grey[300],
        ),
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.white,
          indicatorColor: Colors.blueGrey,
          surfaceTintColor: Color(0xFFE0E0E0),
          iconTheme: MaterialStatePropertyAll(
            IconThemeData(
              color: Colors.blueGrey,
            ),
          ),
          elevation: 80,
          labelTextStyle: MaterialStatePropertyAll(
            TextStyle(
              color: Colors.blueGrey,
            ),
          ),
        ),
        popupMenuTheme: const PopupMenuThemeData(
          color: Colors.white,
          textStyle: TextStyle(
            color: Colors.blueGrey,
          ),
          surfaceTintColor:  Color(0xFFE0E0E0),
        ),
        useMaterial3: true,
      ),
      initialRoute: RouteManager.home,
      onGenerateRoute: RouteManager.generateRoute,
      // color: Color(),
    );
  }
}
