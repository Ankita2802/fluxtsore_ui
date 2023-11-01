import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluxstore_ui/app/components/textfield.dart';
import 'package:fluxstore_ui/app/theme/app_string.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailcontroller = TextEditingController();
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              AppStrings.forgotpsw,
              style: boldBlack,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.forgotemail,
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
              controller: emailcontroller,
              hintText: 'enter your email here',
              isRequired: false,
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: AppColors.grey,
              ),
              textInputAction: TextInputAction.next,
              textInputType: TextInputType.emailAddress,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
