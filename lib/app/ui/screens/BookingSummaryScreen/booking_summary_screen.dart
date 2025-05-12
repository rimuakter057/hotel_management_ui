import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_management/app/controller/booking_summary_controller.dart';
import 'package:hotel_management/app/ui/utils/all_icon_size.dart';
import 'package:hotel_management/app/ui/utils/color.dart';
import 'package:hotel_management/app/ui/utils/image_url.dart';
import 'package:hotel_management/app/ui/utils/text_style.dart';

class BookingSummaryScreen extends StatelessWidget {
  const BookingSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final getSummary = Get.put(BookingSummaryController());
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.tealColor,
        centerTitle: true,
        title: const Text("Booking Summary",style: MyTextStyle.appbarText,),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
            icon:const Icon(Icons.arrow_back,color: AppColors.whiteColor,size: AllIconSize.appBarArrow,)),
      ),
      body:Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(children: [
          Row(children: [
            Container(
              height: size.height*.2,
              width: size.width*.45,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(image:AssetImage(ImageUrl.hotelSix),fit: BoxFit.cover),
            ),),
            SizedBox(width: size.width*.02,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Text("AYANA Resort",
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w800
                )),
              const Text("Address Here",style: MyTextStyle.smallDetailsText,),
              Row(
                children: [
                  Text(
                    "\$350 USD/",
                    style: MyTextStyle.largeDetailsText.copyWith(
                        color: AppColors.tealColor, fontWeight: FontWeight.bold,fontSize: 14),
                  ),
                  const Text(" Night", style: MyTextStyle.smallDetailsText),
                ],
              ),
            ],
            )
          ],),
         SizedBox(height: size.height*.05,),
         ListView.builder(
             shrinkWrap: true,
             itemCount: getSummary.bookingSummaryList.length,
             itemBuilder: (context,index){
           return Column(
             children: [
               Row(children: [
                  Text(getSummary.bookingSummaryList[index].title,style: MyTextStyle.largeDetailsText,),
                 const Spacer(),
                 Text(
                   getSummary.bookingSummaryList[index].value,style: MyTextStyle.smallDetailsText,)
               ],),
               const Divider(),
             ],
           );
         })
        ],),
      )
    );
  }
}
