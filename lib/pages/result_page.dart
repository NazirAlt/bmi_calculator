import 'package:bmi_calculator/app_constants/colors/app_color.dart';
import 'package:bmi_calculator/app_constants/text_styles/app_text_style.dart';
import 'package:bmi_calculator/app_constants/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../get_x_controller/result_controller.dart';
import '../widgets/button_calculate.dart';

class ResultPage extends StatelessWidget {
  final ResultController resultController = Get.put(ResultController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        AppTexts.WealthText,
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 85.0, bottom: 30.0),
              child: Text(AppTexts.ResultText.toUpperCase(),
                  style: AppTextStyles.result),
            ),
            Container(
              color: AppColors.containerColor,
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Obx(() => Text(
                        resultController.title.value,
                        style: AppTextStyles.resultController,
                      )),
                  Obx(() => Text(
                        resultController.result.value.toStringAsFixed(1),
                        style: AppTextStyles.resultcontroller2,
                      )),
                  Obx(() => Text(
                        resultController.descrition.value,
                        style: AppTextStyles.resultcontroller3,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Button_Calculate(
        text: AppTexts.ReCalculateText,
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
