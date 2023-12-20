import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/components/app_button.dart';
import 'package:fluxstore_ui/app/components/carousal_slider.dart';
import 'package:fluxstore_ui/app/screens/auth/signup_screen.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  color: AppColors.white,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: AppColors.fantasyGrey,
                ),
              ),
            ],
          ),
          Positioned(
            top: height * .2,
            left: width * .2,
            right: width * .2,
            child: const CarousalSliderScreen(),
          ),
          Positioned(
            top: height * .8,
            left: width * .2,
            right: width * .2,
            child: AppButton(
              text: 'Shopping now',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ),
                );
              },
              color: AppColors.fantasyGrey,
              border: true,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            ),
          )
        ],
      ),
    );
  }
}
