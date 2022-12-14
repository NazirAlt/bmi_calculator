import 'package:bmi_calculator/app_constants/text_styles/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    Key key,
    @required this.icons,
    @required this.text,
  }) : super(key: key);

  final IconData icons;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icons,
          size: 75,
        ),
        Text(
          text.toUpperCase(),
          style: AppTextStyles.genderWidget,
        ),
      ],
    );
  }
}
