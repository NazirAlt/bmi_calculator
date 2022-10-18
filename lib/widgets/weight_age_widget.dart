import 'package:bmi_calculator/app_constants/colors/app_color.dart';
import 'package:bmi_calculator/app_constants/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeightAgeWidget extends StatelessWidget {
  const WeightAgeWidget(
      {Key key,
      this.word,
      this.secondWord,
      @required this.minus,
      @required this.plus})
      : super(key: key);
  final String word;
  final String secondWord;
  final void Function() minus;
  final void Function() plus;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          word.toUpperCase(),
          style: const TextStyle(fontSize: 25.0),
        ),
        Text(
          secondWord,
          style: const TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.boxShapeColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                    onTap: minus, child: const FaIcon(FontAwesomeIcons.minus)),
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.iconColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                    onTap: plus, child: const FaIcon(FontAwesomeIcons.plus)),
              ),
            ),
          ],
        )
      ],
    );
  }
}

Expanded newMethod() {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        color: AppColors.boxDecorationColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          const FaIcon(
            FontAwesomeIcons.mars,
            size: 75,
          ),
          Text(
            AppTexts.maletext.toUpperCase(),
            style: const TextStyle(fontSize: 25.0),
          ),
        ],
      ),
    ),
  );
}
