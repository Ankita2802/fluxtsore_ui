import 'package:flutter/material.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final TextStyle? style;
  final bool shadow;
  final double? width;
  final Color? color;
  final bool? border;
  const AppButton({
    super.key,
    required this.text,
    required this.onTap,
    this.margin,
    this.padding,
    this.style,
    this.shadow = true,
    this.width,
    this.color,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        alignment: Alignment.center,
        margin: margin ?? const EdgeInsets.symmetric(horizontal: 35),
        padding: padding ?? const EdgeInsets.symmetric(vertical: 11),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
          border: border == true ? Border.all(color: AppColors.white) : null,
          boxShadow: [
            if (shadow)
              const BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(2, 5),
                blurStyle: BlurStyle.normal,
              ),
          ],
        ),
        child: Text(text, style: style ?? normalWhite),
      ),
    );
  }
}
