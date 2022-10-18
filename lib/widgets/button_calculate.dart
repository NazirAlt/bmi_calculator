import 'package:bmi_calculator/app_constants/colors/app_color.dart';
import 'package:bmi_calculator/app_constants/text_styles/app_text_style.dart';
import 'package:flutter/material.dart';

class Button_Calculate extends StatelessWidget {
  const Button_Calculate({
    this.text,
    this.onPressed,
  });
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        height: 100.0,
        color: AppColors.redContainerColor,
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: AppTextStyles.mainbutton,
          ),
        ),
      ),
    );
  }
}
