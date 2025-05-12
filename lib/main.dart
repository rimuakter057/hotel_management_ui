import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_management/app/routes/route_names.dart';
import 'package:hotel_management/app/routes/route_pages.dart';
import 'package:hotel_management/app/ui/utils/color.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
 final size =   MediaQuery.sizeOf(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
       textTheme: TextTheme(
         bodySmall: TextStyle(
           color: AppColors.tealColor,
           fontSize:size.height*.02,
           fontWeight: FontWeight.w400
         ),
         bodyMedium: TextStyle(
             color: AppColors.whiteColor,
             fontSize:size.height*.03,
             fontWeight: FontWeight.w500
         ),
         bodyLarge: TextStyle(
             color: AppColors.tealColor,
             fontSize:size.height*.02,
             fontWeight: FontWeight.w400
         ),
       )
     ),
     getPages: RoutePages().routes,
      initialRoute: RoutesName.splash,
    );
  }
}


