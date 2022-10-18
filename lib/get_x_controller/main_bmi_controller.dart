import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/main_bmi_page.dart';

class MainBmiController extends GetxController {
  RxDouble _sliderValue = 165.0.obs;
  RxInt _weight = 70.obs;
  RxInt _age = 30.obs;

  RxDouble get getSliderValue => _sliderValue;
  set setSliderValue(double value) {
    _sliderValue.value = value;
  }

  RxInt get getWeight => _weight;
  set setWeight(int value) {
    _weight.value = value;
    ;
  }

  RxInt get getage => _age;
  set setAge(int value) {
    _age.value = value;
  }

  Rx<Color> activeColor = const Color.fromARGB(255, 130, 131, 151).obs;
  Rx<Color> inActiveColor = const Color(0xff111327).obs;
  Rx<Gender> gender = Gender.None.obs;
  void chooseGender(Gender choice) {
    gender.value = choice;
  }

  void incrementWeight() {
    _weight++;
  }

  void decrementWeight() {
    _weight--;
  }

  void incrementAge() {
    _age++;
  }

  void decrementAge() {
    _age--;
  }
}
