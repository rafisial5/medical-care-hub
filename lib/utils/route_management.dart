import 'package:get/get.dart';
import 'package:virtual_medical_hub/utils/bindings.dart';
import 'package:virtual_medical_hub/utils/constants.dart';
import 'package:virtual_medical_hub/view/signup_screen.dart';

import '../view/dashboard_screen.dart';
import '../view/signin_screen.dart';

class RouteManagement {
  static List<GetPage> getPages(){
    return [
      GetPage(
          name: kSignInScreenRoute,
          page: () => const SignInScreen(),
          binding: ScreenBindings(),
      ),
      GetPage(
          name: kSignUpScreenRoute,
          page: () =>  const SignUpScreen(),
          binding: ScreenBindings(),
      ),
      GetPage(
          name: kDashboardScreenRoute,
          page: () => const DashBoardScreen(),
          binding: ScreenBindings(),
      ),
    ];
  }
}