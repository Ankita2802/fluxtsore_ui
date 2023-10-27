import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/theme/app_assets.dart';
import 'package:fluxstore_ui/app/theme/app_string.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AppImages.welcomeScreenBackground,
            ),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppStrings.welcome,
                style: boldWhite,
              ),
              Text(
                AppStrings.fashionstore,
                style: normalWhite,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
