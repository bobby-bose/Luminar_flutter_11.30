import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxx/home_page.dart';
import 'package:getxx/theme_controller.dart';
import 'package:getxx/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: themeController.theme,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      home: SimpleHomePage(),
    );
  }
}
