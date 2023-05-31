import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/shared/routes/app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetMaterialApp(
        title: '盈乐贵宾会',
        theme: ThemeData(
          // 定义应用程序的主题
          primarySwatch: Colors.blue,
        ),
        initialRoute: AppRoutes.initialRoute, // 设置初始路由
        getPages: AppRoutes.routes, // 配置路由
      ),
    );
  }
}
