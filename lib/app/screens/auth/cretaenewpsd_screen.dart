import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluxstore_ui/app/components/app_button.dart';
import 'package:fluxstore_ui/app/components/textfield.dart';
import 'package:fluxstore_ui/app/components/verifysheet.dart';
import 'package:fluxstore_ui/app/theme/app_string.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';

class CreatenewPasswordScreen extends StatefulWidget {
  const CreatenewPasswordScreen({super.key});

  @override
  State<CreatenewPasswordScreen> createState() =>
      _CreatenewPasswordScreenState();
}

class _CreatenewPasswordScreenState extends State<CreatenewPasswordScreen> {
  TextEditingController newpasswordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  String? error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            height: 36,
            width: 36,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                AppStrings.cretenewpsw,
                style: boldBlack.copyWith(letterSpacing: 0.0, wordSpacing: 1.0),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.createnew,
                style: normalBlack.copyWith(
                  fontSize: 14,
                  letterSpacing: 0.23,
                  wordSpacing: 1.0,
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              AppTextFormField(
                isRequired: false,
                error: error,
                controller: newpasswordcontroller,
                hintText: 'New Password',
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text,
                icon: Icons.visibility,
                obscureText: true,
                onChanged: (value) {},
              ),
              AppTextFormField(
                error: error,
                isRequired: false,
                controller: confirmpasswordcontroller,
                hintText: 'Confirm Password',
                icon: Icons.visibility,
                obscureText: true,
                textInputAction: TextInputAction.done,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 100,
              ),
              AppButton(
                text: 'Confirm',
                onTap: () {
                  if (newpasswordcontroller.text ==
                      confirmpasswordcontroller.text) {
                    verifySheet(context);
                  }
                },
                margin:
                    const EdgeInsets.symmetric(horizontal: 75, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 1, vertical: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
