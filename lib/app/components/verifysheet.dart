import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/components/app_button.dart';
import 'package:fluxstore_ui/app/theme/app_assets.dart';
import 'package:fluxstore_ui/app/theme/app_string.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';

Future<dynamic> verifySheet(BuildContext context) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    context: context,
    builder: (context) {
      return Container(
        height: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(AppImages.verify),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.passwordchange,
              style: normalBlack.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              AppStrings.welcomedis,
              style: normalBlack,
            ),
            const SizedBox(
              height: 20,
            ),
            AppButton(
              text: 'Browse Home',
              onTap: () {},
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
            ),
          ],
        ),
      );
    },
  );
}
