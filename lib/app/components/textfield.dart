import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluxstore_ui/app/theme/app_theme.dart';
import 'package:fluxstore_ui/app/theme/theme_constant.dart';

class AppTextFormField extends StatefulWidget {
  final TextStyle? style;
  final Widget? prefix;
  final int? maxLines;
  final int minLines;
  final bool readOnly;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final TextInputType? textInputType;
  final String? hintText;
  final TextInputAction? textInputAction;
  final TextEditingController controller;
  final bool isBlackBackground;
  final bool suffixArrow;
  final Color? themeColor;
  final EdgeInsetsGeometry? margin;
  final bool center;
  final Widget? prefixIcon;
  final bool isRequired;
  final String? errorText;
  final List<TextInputFormatter>? inputFormatters;
  final String? error;
  final bool? enabled;
  final IconData? icon;
  final bool? obscureText;

  const AppTextFormField({
    super.key,
    this.hintText,
    required this.controller,
    this.maxLines = 1,
    this.minLines = 1,
    this.onTap,
    this.readOnly = false,
    this.textInputType,
    this.suffixArrow = false,
    this.onChanged,
    this.prefix,
    this.textInputAction,
    this.style,
    this.isBlackBackground = false,
    this.themeColor,
    this.margin,
    this.center = false,
    this.prefixIcon,
    this.isRequired = true,
    this.errorText,
    this.inputFormatters,
    this.error,
    this.enabled,
    this.icon,
    this.obscureText,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.margin ??
          const EdgeInsets.symmetric(horizontal: 1, vertical: 10),
      child: TextFormField(
        enabled: widget.enabled,
        inputFormatters: widget.inputFormatters,
        cursorColor: widget.themeColor ?? AppColors.black,
        keyboardType: widget.textInputType,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        textAlign: widget.center ? TextAlign.center : TextAlign.start,
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        readOnly: widget.readOnly,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        obscureText: isVisible == true ? true : false,
        style: widget.style ?? normalBlack,
        controller: widget.controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          errorText: widget.errorText,
          prefixIcon: widget.prefixIcon,
          prefixIconColor: widget.themeColor,
          prefix: widget.prefix,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 13,
            vertical: 13,
          ),
          suffixIcon: widget.icon != null
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: Icon(
                    isVisible ? Icons.visibility_off : widget.icon,
                    color: isVisible ? AppColors.grey : AppColors.fantasyGrey,
                  ),
                )
              : null,
          hintText: widget.hintText,
          hintStyle: widget.isBlackBackground ? normalWhite : normalBlack,
          //   enabledBorder: InputBorder.none,
          //   focusedBorder: OutlineInputBorder(
          //     borderSide: BorderSide(
          //       color: widget.isBlackBackground
          //           ? AppColors.fantasyGrey
          //           : widget.themeColor ?? AppColors.fluxstoreBlack,
          //       width: 2,
          //     ),
          //     borderRadius: BorderRadius.circular(5),
          //   ),
          //   errorBorder: OutlineInputBorder(
          //     borderSide: const BorderSide(color: AppColors.fantasyRed, width: 2),
          //     borderRadius: BorderRadius.circular(5),

          //   disabledBorder: OutlineInputBorder(
          //     borderSide:
          //         const BorderSide(color: AppColors.fluxstoreBlack, width: 2),
          //     borderRadius: BorderRadius.circular(5),
          //   ),
        ),
        validator: (value) {
          if (value!.isEmpty && widget.isRequired) {
            return 'This Field Can\'t be empty';
          }
          return widget.error;
        },
      ),
    );
  }
}
