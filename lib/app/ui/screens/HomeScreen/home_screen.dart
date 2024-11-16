import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management/app/controller/home_district_controller.dart';
import 'package:hotel_management/app/controller/hotel_name_controller.dart';
import 'package:hotel_management/app/ui/utils/color.dart';
import 'package:hotel_management/app/ui/utils/image_url.dart';
import 'package:hotel_management/app/ui/utils/text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final hotelNameData = Get.put(HotelNameController());
    final placeData = Get.put(HomeDistrictController());
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageUrl.homeBackground),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: size.height * .1,
              ),
             //searchbar
              Container(
                margin: const EdgeInsets.all(20),
                height: size.height * .06,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "search",
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none),
                ),
              ),
              SizedBox(
                height: size.height * .05,
              ),
              Expanded(
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text(
                              "City Name",
                              style: MyTextStyle.largeDetailsText,
                            ),
                            const Spacer(),
                            Text(
                              "View All",
                              style: MyTextStyle.textFieldStyle
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .15,
                        child: ListView.builder(
                            itemCount: placeData.homeDistrictList.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: size.height * .06,
                                      width: size.width * .18,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.red,
                                      ),
                                      child: Image.asset(
                                        placeData.homeDistrictList[index].image,
                                        height: size.height * .06,
                                        width: size.width * .18,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Text(
                                      placeData.homeDistrictList[index].name,
                                      style: MyTextStyle.textFieldStyle
                                          .copyWith(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Text(
                              "Hotel Near You",
                              style: MyTextStyle.largeDetailsText,
                            ),
                            const Spacer(),
                            Text(
                                "View All",
                                style: MyTextStyle.textFieldStyle
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: size.height * .4,
                        child: ListView.builder(
                            itemCount: placeData.homeDistrictList.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: size.height * .2,
                                          width: size.width * .35,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.red,
                                          ),
                                          child: Image.asset(
                                            hotelNameData.hotelNameList[index].image,
                                            height: size.height * .2,
                                            width: size.width * .35,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          child: IconButton(onPressed: (){},
                                              icon: const Icon(Icons.favorite,color:AppColors.whiteColor,size:40,)),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          hotelNameData.hotelNameList[index].name,
                                          style: MyTextStyle.smallDetailsText.copyWith(
                                            fontSize: size.height*.02,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Text(
                                          hotelNameData.hotelNameList[index].price,
                                          style: MyTextStyle.smallDetailsText.copyWith(
                                              fontSize: size.height*.02,
                                              fontWeight: FontWeight.bold,
                                            color: AppColors.tealColor
                                          ),
                                        ),
                                        Row(
                                          children: [
                                                    Container(
                                                      height:size.height*0.025,
                                                      width:size.width*.1,
                                                      decoration:BoxDecoration(
                                                        color: AppColors.limeShadeTwo,
                                                        borderRadius: BorderRadius.circular(20)
                                                      ),
                                                      child: Row(
                                                        children: [
                                                          Icon(Icons.star,color: Colors.red,size: 15,),
                                                                                                             Icon(Icons.star,color: Colors.red,size: 15,),
                                                          Icon(Icons.star,color: Colors.red,size: 15,),
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      hotelNameData.hotelNameList[index].rated.toString(),
                                                      style: MyTextStyle.smallDetailsText.copyWith(
                                                          fontSize: size.height*.02,
                                                          fontWeight: FontWeight.bold
                                                      ),
                                                    ),
                                                   Text(
                                              "(20 review)",
                                              style: MyTextStyle.textFieldStyle.copyWith(
                                                  fontSize: size.height*0.015,
                                                  color: Colors.grey
                                              ),
                                            ),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}


