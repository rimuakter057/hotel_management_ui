import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_management/app/controller/all_option_controller.dart';
import 'package:hotel_management/app/ui/screens/BookingSummaryScreen/booking_summary_screen.dart';
import '../../utils/app_text.dart';
import '../../utils/color.dart';
import '../../utils/icon_url.dart';
import '../../utils/image_url.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_circle.dart';


class AllOptionScreen extends StatelessWidget {
  const AllOptionScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final allOptionController = Get.put(AllOptionController());
    return Scaffold(
        body: Container(
      height: size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                ImageUrl.splash,
              ),
              fit: BoxFit.cover)),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(height: 150,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Image.asset(
                      ImageUrl.splashText,
                      height: size.height * .15,
                      width: size.width * .3,
                      fit: BoxFit.fill,
                    ),
                    CustomIconCircle(
                      size: size,
                      icon: IconUrl.edit,
                    ),
                  ],
                ),
                        GridView.builder(
                                      shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: allOptionController.allOptionList.length,
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            mainAxisSpacing: 6,
                                          crossAxisSpacing: 6
                                        ),
                                        itemBuilder: (context, index) {
                                        var data= allOptionController.allOptionList[index];
                                         return GestureDetector(
                                           onTap: (){
                                             Get.to(BookingSummaryScreen());
                                           },
                                           child: Container(
                                             decoration: BoxDecoration(
                                                 borderRadius: BorderRadius.circular(10),
                                                 gradient: LinearGradient(colors: [
                                                   data.firstColor,data.secondColor
                                                 ],
                                                     begin: Alignment.centerLeft,
                                                     end: Alignment.centerRight
                                                 )
                                             ),
                                             child: Padding(
                                               padding: const EdgeInsets.all(8.0),
                                               child: Column(
                                                 children: [
                                                   Image.asset(data.assetImage,height: 50),
                                                   Text(
                                                     maxLines: 2,
                                                     data.text,style: TextStyle(
                                                     fontSize: 12,
                                                     fontWeight: FontWeight.bold,
                                                     color: AppColors.whiteColor
                                                   ),),

                                                 ],
                                               ),
                                             ),
                                           ),
                                         );


                                        }),

        
        
                SizedBox(
                  height: size.height * .04,
                ),
                CustomButton(
                  size: size,
                  buttonName: AppText.logOut,
                  onTap: () {
                    print("LogOut");
                  },
                ),
              ]),
        ),
      ),
    ));
  }
}
