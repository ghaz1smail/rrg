import 'package:get/get.dart';
import 'package:rrg/view/splash_screen.dart';

class AppRoutes {
  List<GetPage<dynamic>>? pagesRoutes = [
    GetPage(name: '/', page: () => const SplashScreen()),
    // GetPage(name: '/register', page: () => const RegisterScreen()),
    // GetPage(name: '/guest', page: () => const AuctionCars()),
    // GetPage(name: '/filter', page: () => const FilterScreen()),
    // GetPage(name: '/home', page: () => const UserScreen()),
    // GetPage(name: '/admin', page: () => const AdminScreen()),
    // GetPage(name: '/fogot-password', page: () => const ForgetScreen()),
    // GetPage(name: '/add-user', page: () => const AddUserScreen()),
    // GetPage(name: '/settings', page: () => const SettingsScreen()),
  ];
}
