import '/modules/home/home_module.dart';

class AppRoutes {
  AppRoutes._();

  static const initialRoute = HomeModule.route;
  static final routes = [
    ...HomeModule.pages,
  ];
}
