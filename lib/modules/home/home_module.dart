import 'package:get/get.dart';
import '/modules/home/home_controller.dart';
import '/modules/home/home_page.dart';

class HomeModule extends GetxController {
  static const route = '/';

  static final pages = [
    GetPage(
      name: route,
      page: () => const HomePage(),
      binding: BindingsBuilder(() {
        Get.lazyPut<HomeController>(() => HomeController());
      }),
    ),
  ];
}
