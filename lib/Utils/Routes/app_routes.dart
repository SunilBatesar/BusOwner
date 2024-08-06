import 'package:bus_owner/Screens/Auth/login_screen.dart';
import 'package:bus_owner/Screens/Home/home_screen.dart';
import 'package:bus_owner/Screens/Onboarding/splash_screen.dart';
import 'package:bus_owner/Utils/Routes/routes_name.dart';
import 'package:get/get.dart';

final List<GetPage<dynamic>> appRoutes = [
  // Onboarding
  GetPage(name: RoutesName.splashScreen, page: () => const SplashScreen()),

  // Auth
  GetPage(name: RoutesName.loginScreen, page: () => const LoginScreen()),

  // Home
  GetPage(name: RoutesName.homeScreen, page: () => const HomeScreen()),
];
