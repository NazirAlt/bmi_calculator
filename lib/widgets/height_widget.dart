import 'package:bmi_calculator/app_constants/colors/app_color.dart';
import 'package:bmi_calculator/app_constants/text_styles/app_text_style.dart';
import 'package:bmi_calculator/app_constants/texts/app_text.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({Key key, this.onPressed, this.sliderValueText})
      : super(key: key);
  final Function(double value) onPressed;
  final int sliderValueText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.expandedColor,
            borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppTexts.HeightText.toUpperCase(),
              style: const TextStyle(
                fontSize: 25.0,
                letterSpacing: 1.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  sliderValueText.toString(),
                  style: AppTextStyles.heightweight,
                ),
                const Text(
                  AppTexts.CmText,
                  style: AppTextStyles.heightweight2,
                ),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: AppColors.activeTrackColor,
                inactiveTrackColor: AppColors.inactiveTrackColor,
                thumbColor: AppColors.thumbColor,
                overlayColor: AppColors.overlayColor,
              ),
              child: Slider(
                value: sliderValueText.toDouble(),
                max: 230,
                onChanged: onPressed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
