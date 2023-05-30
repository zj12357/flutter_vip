import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  var isAuthenticated = false.obs;
  var themeMode = ThemeMode.light.obs;

  void login() {
    // 处理用户身份验证逻辑
    isAuthenticated.value = true;
  }

  void logout() {
    // 处理用户注销逻辑
    isAuthenticated.value = false;
  }

  void toggleTheme() {
    // 切换应用程序主题
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
    } else {
      themeMode.value = ThemeMode.light;
    }
  }
}
