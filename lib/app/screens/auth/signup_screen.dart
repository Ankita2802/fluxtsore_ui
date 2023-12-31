import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/components/app_button.dart';
import 'package:fluxstore_ui/app/components/textfield.dart';
import 'package:fluxstore_ui/app/screens/auth/login_screen.dart';
import 'package:fluxstore_ui/app/theme/app_assets.dart';
import 'package:fluxstore_ui/app/theme/app_string.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _signupFormKey = GlobalKey<FormState>();
  String? error;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  List<String> choices = [
    AppImages.iphone,
    AppImages.google,
    AppImages.facebook,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        bottomOpacity: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _signupFormKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.createaccount,
                    style: boldBlack,
                  ),
                ],
              ),
              AppTextFormField(
                controller: namecontroller,
                hintText: 'Enter your name',
                textInputType: TextInputType.name,
                textInputAction: TextInputAction.next,
                isRequired: false,
                onChanged: (value) {},
              ),
              AppTextFormField(
                controller: emailcontroller,
                hintText: 'Email address',
                isRequired: false,
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.emailAddress,
                onChanged: (value) {},
              ),
              AppTextFormField(
                error: error,
                isRequired: false,
                controller: passwordcontroller,
                hintText: 'Password',
                textInputAction: TextInputAction.next,
                textInputType: TextInputType.text,
                onChanged: (value) {},
              ),
              AppTextFormField(
                error: error,
                isRequired: false,
                controller: confirmpasswordcontroller,
                hintText: 'Confirm Password',
                textInputAction: TextInputAction.done,
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 20,
              ),
              AppButton(
                text: 'SIGN UP',
                onTap: () {},
                margin:
                    const EdgeInsets.symmetric(horizontal: 75, vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 1, vertical: 20),
                color: AppColors.darkGrey,
              ),
              Text(AppStrings.signup, style: black400),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  choices.length,
                  (index) => GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.grey),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                          child: Image.asset(
                            choices[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: "Already have an account? ",
                  style: black400.copyWith(fontSize: 14),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Login",
                      style: black400.copyWith(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
