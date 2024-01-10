import 'package:get/get.dart';


import 'package:inclusi_careers/app/modules/login/login_binding.dart';
import 'package:inclusi_careers/app/modules/login/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
  ];
}