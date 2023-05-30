import 'package:get/get.dart';
import 'package:vip_app/modules/home/home_page.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
      transition: Transition.fade,
    ),
  ];
}
