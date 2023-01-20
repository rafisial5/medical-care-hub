import 'package:get/get.dart';
import 'package:virtual_medical_hub/utils/bindings.dart';
import 'package:virtual_medical_hub/utils/constants.dart';
import 'package:virtual_medical_hub/view/all_doctors_screen.dart';
import 'package:virtual_medical_hub/view/map_screen.dart';
import 'package:virtual_medical_hub/view/my_appointments_screen.dart';
import 'package:virtual_medical_hub/view/signup_screen.dart';

import '../view/dashboard_screen.dart';
import '../view/register_appointment_screen.dart';
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
          binding: ScreenBindings(),),
      GetPage(
        name: kAllDoctorsScreenRoute,
        page: () => const AllDoctorsScreen(),
        binding: ScreenBindings(),),
      GetPage(
        name: kRegisterAppointmentScreenRoute,
        page: () =>  const RegisterAppointmentScreen(),
        binding: ScreenBindings(),),
      GetPage(
        name: kMyAppointmentScreenRoute,
        page: () =>  const MyAppointmentsScreen(),
        binding: ScreenBindings(),),
      GetPage(
        name: kMapScreenRoute,
        page: () =>  const MapScreen(),
        binding: ScreenBindings(),),
    ];
  }
}