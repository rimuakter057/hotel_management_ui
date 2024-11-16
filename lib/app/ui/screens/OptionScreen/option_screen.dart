import 'package:flutter/material.dart';
import 'package:hotel_management/app/ui/utils/app_text.dart';
import 'package:hotel_management/app/ui/utils/color.dart';
import 'package:hotel_management/app/ui/utils/icon_url.dart';
import 'package:hotel_management/app/ui/utils/image_url.dart';
import 'package:hotel_management/app/ui/utils/text_style.dart';
import 'package:hotel_management/app/ui/widgets/custom_button.dart';

import 'Widget/option_box.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                Image.asset(ImageUrl.splashText,height: size.height*.15,
                width: size.width*.3,
                  fit: BoxFit.fill,
                ),
                Container(
                  height: size.height * .25,
                  width: size.width * .1,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.tealColor),
                  child: Center(
                      child: Image.asset(
                    IconUrl.edit,
                    fit: BoxFit.cover,
                  )),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OptionBox(
                      size: size,
                      firstColor: AppColors.tealColor,
                      secondColor: AppColors.tealShade,
                      assetImage:IconUrl.createHotel,
                      text:AppText.createHotel,
                    ),
                    OptionBox(
                      size: size,
                      firstColor: AppColors.yellowShade,
                      secondColor: AppColors.yellowShadeTwo,
                      assetImage:IconUrl.hotelList,
                      text:AppText.hotelList,
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                OptionBox(
                  size: size,
                  firstColor: AppColors.blueShade,
                  secondColor: AppColors.blueShadeTwo,
                  assetImage:IconUrl.agentList,
                  text:AppText.agentList,
                ),
              ],
            ),
            SizedBox(height: size.height*.04,),
            CustomButton(size: size, buttonName: AppText.logOut,onTap: (){
              print("LogOut");
            },),
          ],
        ),
      ),
    );
  }
}
