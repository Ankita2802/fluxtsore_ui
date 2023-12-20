import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/screens/auth/verificationcode.dart';
import 'package:fluxstore_ui/app/screens/home/home_screen.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';
import 'package:fluxstore_ui/app/utills/app_key.dart';

void main() {
  runApp(const MyApp());
}

// late TabStateManager tabManager;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Keys.navigatorKey,
      scaffoldMessengerKey: Keys.messangerKey,
      debugShowCheckedModeBanner: false,
      title: 'Fluxstore',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.fluxstoreyWhite,
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
        platform: TargetPlatform.android,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.fluxstoreYellow,
        ),
        scrollbarTheme: ScrollbarThemeData(
          thickness: const MaterialStatePropertyAll(6),
          thumbColor: MaterialStateProperty.all(Colors.grey),
          crossAxisMargin: 1.0,
          radius: const Radius.circular(5),
          thumbVisibility: MaterialStateProperty.all(true),
          interactive: true,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
