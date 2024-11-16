import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_management/app/controller/all_option_controller.dart';
import '../../utils/app_text.dart';
import '../../utils/color.dart';
import '../../utils/icon_url.dart';
import '../../utils/image_url.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_circle.dart';
import '../OptionScreen/Widget/option_box.dart';

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
        image: DecorationImage(image:AssetImage(ImageUrl.splash,),fit: BoxFit.cover)
      ),
      child: Padding(
        padding: const EdgeInsets.all( 20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
              CustomIconCircle(size: size, icon:  IconUrl.edit,
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: allOptionController.allOptionList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                crossAxisSpacing: 8
              ),
              itemBuilder: (context, index) {
              var data= allOptionController.allOptionList[index];
                return OptionBox(
                  size: size,
                  firstColor: data.firstColor,
                  secondColor: data.secondColor,
                  assetImage:data.assetImage,
                  text: data.text,
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
          ]
        ),
      ),
    )
    );
  }
}


