import 'package:flutter/material.dart';
import 'package:hotel_management/app/controller/employee_list_controller.dart';
import 'package:hotel_management/app/ui/utils/app_text.dart';
import 'package:hotel_management/app/ui/utils/color.dart';
import 'package:get/get.dart';
import 'package:hotel_management/app/ui/utils/icon_url.dart';
import 'package:hotel_management/app/ui/utils/image_url.dart';
import 'package:hotel_management/app/ui/utils/text_style.dart';

class EmployeeListScreen extends StatelessWidget {
  const EmployeeListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final getData = Get.put(EmployeeListController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
         children: [
           Container(
             width: double.infinity,
             height: kToolbarHeight ,
             decoration: const BoxDecoration(
               gradient: LinearGradient(
                 colors: [AppColors.tealShade, AppColors.blueShadeTwo,
                 ],
                 begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
               ),
             ),
             child: Center(child: Text(AppText.employeeList,style: MyTextStyle.titleText,)),
           ),
           ListView.builder(
             padding: EdgeInsets.symmetric(horizontal: 20,),
         scrollDirection: Axis.vertical,
         shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
         itemCount: getData.employeeList.length,
         itemBuilder: (context,index){
           final size = MediaQuery.sizeOf(context);
           var data = getData.employeeList[index];
           return Padding(
             padding: const EdgeInsets.symmetric(vertical: 5.0),
             child: ListTile(
               shape: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(15),
                   borderSide: BorderSide.none
               ),
               tileColor:data.tileColor,
               leading:ClipOval(
                 child: Image.asset(
                   data.profileImage,
                   width: size.width*.1, // Set the width
                   height:size.width*.1,  // Set the height
                   fit: BoxFit.cover, // Ensures the image covers the circle
                 ),
               ) ,
               title: Text(data.title,style: MyTextStyle.titleText,),
               subtitle: Text(data.subTitle,style: MyTextStyle.subtitleText,),
             ),
           );
         }),
         ],
        ),
      ),


    );
  }
}
