import 'package:bmi_calculator/app_constants/texts/app_text.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../get_x_controller/main_bmi_controller.dart';
import '../widgets/button_calculate.dart';
import '../widgets/custom_widget.dart';
import '../widgets/gender_widget.dart';
import '../widgets/height_widget.dart';
import '../widgets/weight_age_widget.dart';

enum Gender {
  Male,
  Female,
  None,
}

class MainBmiPage extends StatelessWidget {
  final MainBmiController _mainBmiController = Get.put(MainBmiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppTexts.AppBarText),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Obx(() => CustomWidget(
                        onTap: () {
                          _mainBmiController.chooseGender(Gender.Male);
                        },
                        color: _mainBmiController.gender.value == Gender.Male
                            ? _mainBmiController.activeColor.value
                            : _mainBmiController.inActiveColor.value,
                        widget: const GenderWidget(
                            icons: FontAwesomeIcons.mars,
                            text: AppTexts.maletext),
                      )),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Obx(() => CustomWidget(
                        onTap: () {
                          _mainBmiController.chooseGender(Gender.Female);
                        },
                        color: _mainBmiController.gender.value == Gender.Female
                            ? _mainBmiController.activeColor.value
                            : _mainBmiController.inActiveColor.value,
                        widget: const GenderWidget(
                            icons: FontAwesomeIcons.venus,
                            text: AppTexts.FemaleText),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            CustomWidget(
              widget: Obx(() => HeightWidget(
                  onPressed: (double ozgorgonData) =>
                      _mainBmiController.setSliderValue = ozgorgonData,
                  sliderValueText:
                      _mainBmiController.getSliderValue.value.toInt())),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: Row(
                children: [
                  CustomWidget(
                    widget: Obx(() => WeightAgeWidget(
                        minus: () {
                          _mainBmiController.decrementWeight();
                        },
                        plus: () {
                          _mainBmiController.incrementWeight();
                        },
                        word: AppTexts.WeightText,
                        secondWord:
                            _mainBmiController.getWeight.value.toString())),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  CustomWidget(
                    widget: Obx(() => WeightAgeWidget(
                          minus: (() {
                            _mainBmiController.decrementAge();
                          }),
                          plus: (() {
                            _mainBmiController.incrementAge();
                          }),
                          word: AppTexts.AgeText,
                          secondWord:
                              _mainBmiController.getage.value.toString(),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Button_Calculate(
        text: AppTexts.CalculateText,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: ((context) => ResultPage()),
            ),
          );
        },
      ),
    );
  }
}
