import 'package:get/get.dart';
import 'package:inclusi_careers/app/modules/home/home_binding.dart';
import 'package:inclusi_careers/app/modules/home/home_view.dart';

import 'package:inclusi_careers/app/modules/login/login_binding.dart';
import 'package:inclusi_careers/app/modules/login/login_view.dart';
import 'package:inclusi_careers/app/modules/register/register_binding.dart';
import 'package:inclusi_careers/app/modules/register/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.REGISTER;

  static final routes = [
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
