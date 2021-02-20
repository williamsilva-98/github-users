import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_users/app/pages/home/home_binding.dart';
import 'package:github_users/app/theme/app_theme.dart';
import 'app/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: HomeBinding(),
      theme: AppTheme.appTheme,
      home: HomePage(),
    );
  }
}
