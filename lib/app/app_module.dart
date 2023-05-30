import 'package:get/get.dart';
import '/app/app_controller.dart';

class AppModule extends Bindings {
  @override
  void dependencies() {
    // 注册全局的控制器和服务
    Get.lazyPut<AppController>(() => AppController());
  }
}
