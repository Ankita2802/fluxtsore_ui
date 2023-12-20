import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/components/app_button.dart';
import 'package:fluxstore_ui/app/screens/auth/inital_screen.dart';
import 'package:fluxstore_ui/app/theme/app_assets.dart';
import 'package:fluxstore_ui/app/theme/app_string.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const InitialScreen(),
        ),
      );
    });
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
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  AppStrings.welcome,
                  style: boldWhite,
                ),
                Text(
                  AppStrings.fashionstore,
                  style: normalWhite,
                ),
                AppButton(
                  text: 'Get Started',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InitialScreen(),
                      ),
                    );
                  },
                  color: AppColors.fantasyGrey,
                  border: true,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
