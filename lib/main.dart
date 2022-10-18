import 'package:bmi_calculator/app_constants/colors/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'pages/main_bmi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: AppColors.mainbagColor,
        ),
        scaffoldBackgroundColor: AppColors.scaffoldbagColor,
      ),
      home: MainBmiPage(),
    );
  }
}
