import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/components/app_button.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final controller = TextEditingController();

  Timer? timer;
  int start = 60;

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  void startTimer() {
    setState(() {
      start = 60;
    });
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const FantasyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Text('Verification Code', style: boldBlack),
              const SizedBox(height: 30),
              Text(
                'Please enter the verification code we sent\nto your email address',
                style: normalBlack,
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 50),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Pinput(
                    length: 4,
                    controller: controller,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    defaultPinTheme: PinTheme(
                      height: 60,
                      width: 60,
                      textStyle: normalBlack.copyWith(fontSize: 24),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey),
                        boxShadow: [
                          // BoxShadow(
                          //   color: Colors.black26,
                          //   offset: Offset(2, 5),
                          //   blurRadius: 5,
                          //   blurStyle: BlurStyle.normal,
                          // ),
                        ],
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      height: 40,
                      width: 40,
                      textStyle: normalBlack.copyWith(fontSize: 24),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(2, 5),
                            blurRadius: 5,
                            blurStyle: BlurStyle.normal,
                          ),
                        ],
                      ),
                    ),
                  )),
              const SizedBox(height: 50),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (start == 0) startTimer();
                    },
                    child: Text(
                      "Resend in ",
                      style: start == 0 ? normalBlack : normalBlack,
                    ),
                  ),
                  Text(
                    "00 : ${start < 10 ? '0$start' : start}",
                    style: normalBlack,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              AppButton(
                text: 'Verify',
                onTap: () {},
                color: AppColors.darkGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
