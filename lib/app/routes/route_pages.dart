
import 'package:get/get.dart';
import 'package:hotel_management/app/routes/route_names.dart';
import 'package:hotel_management/app/ui/screens/AllOption/all_option_screen.dart';
import 'package:hotel_management/app/ui/screens/BookingSummaryScreen/booking_summary_screen.dart';
import 'package:hotel_management/app/ui/screens/EmployeeListScreen/employee_list_screen.dart';
import 'package:hotel_management/app/ui/screens/HomeScreen/home_screen.dart';
import 'package:hotel_management/app/ui/screens/HotelDetailsScreen/hotel_details_screen.dart';
import 'package:hotel_management/app/ui/screens/login_screen.dart';
import 'package:hotel_management/app/ui/screens/main_nav_screen/main_nav_screen.dart';
import 'package:hotel_management/app/ui/screens/splash_screen.dart';

class RoutePages{
List <GetPage<dynamic>> routes = [
  GetPage(name: RoutesName.splash, page:()=>const SplashScreen()),
  GetPage(name: RoutesName.login, page:()=>const LoginScreen()),
  GetPage(name: RoutesName.mainNav, page:()=>const MainNavScreen()),
  GetPage(name: RoutesName.home, page:()=>const HomeScreen()),
  GetPage(name: RoutesName.allOption, page:()=>const AllOptionScreen()),
  GetPage(name: RoutesName.employeeList, page:()=>const EmployeeListScreen()),
  GetPage(name: RoutesName.hotelDetails, page:()=>const HotelDetailsScreen(hotelName: '', rate: '', price: '',)),
  GetPage(name: RoutesName.bookingSummary, page:()=>const BookingSummaryScreen())
];
}