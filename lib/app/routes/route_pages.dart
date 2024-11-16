
import 'package:get/get.dart';
import 'package:hotel_management/app/routes/route_names.dart';
import 'package:hotel_management/app/ui/screens/AllOption/all_option_screen.dart';
import 'package:hotel_management/app/ui/screens/BookingSummaryScreen/booking_summary_screen.dart';
import 'package:hotel_management/app/ui/screens/EmployeeListScreen/employee_list_screen.dart';
import 'package:hotel_management/app/ui/screens/HomeScreen/home_screen.dart';
import 'package:hotel_management/app/ui/screens/HotelDetailsScreen/hotel_details_screen.dart';
import 'package:hotel_management/app/ui/screens/OptionScreen/option_screen.dart';
import 'package:hotel_management/app/ui/screens/login_screen.dart';
import 'package:hotel_management/app/ui/screens/splash_screen.dart';

class RoutePages{
List <GetPage<dynamic>> routes = [
  GetPage(name: RoutesName.splash, page:()=>SplashScreen()),
  GetPage(name: RoutesName.login, page:()=>LoginScreen()),
  GetPage(name: RoutesName.home, page:()=>HomeScreen()),
  GetPage(name: RoutesName.option, page:()=>OptionScreen()),
  GetPage(name: RoutesName.allOption, page:()=>AllOptionScreen()),
  GetPage(name: RoutesName.employeeList, page:()=>EmployeeListScreen()),
  GetPage(name: RoutesName.hotelDetails, page:()=>HotelDetailsScreen()),
  GetPage(name: RoutesName.bookingSummary, page:()=>BookingSummaryScreen())
];
}