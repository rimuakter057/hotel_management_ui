import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hotel_management/app/controller/home_district_controller.dart';
import 'package:hotel_management/app/controller/hotel_name_controller.dart';
import 'package:hotel_management/app/ui/utils/color.dart';
import 'package:hotel_management/app/ui/utils/image_url.dart';
import 'package:hotel_management/app/ui/utils/text_style.dart';

import '../HotelDetailsScreen/hotel_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final hotelNameData = Get.put(HotelNameController());
    final placeData = Get.put(HomeDistrictController());
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
                children: [
          Container(
            height: size.height - kBottomNavigationBarHeight,
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
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
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
                          //place name
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
                          const Text(
                            "Hotel Near You",
                            style: MyTextStyle.largeDetailsText,
                          ),
                          //card
                          Expanded(
                            child: GridView.builder(
                              itemCount: placeData.homeDistrictList.length,
                              padding: const EdgeInsets.all(8),
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 0.7,
                              ),
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Get.to(HotelDetailsScreen(
                                      hotelName:hotelNameData.hotelNameList[index].name,

                                      rate: hotelNameData.hotelNameList[index].rated.toString(),
                                       price: hotelNameData.hotelNameList[index].price,));
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    elevation: 3,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                hotelNameData.hotelNameList[index].image,
                                                height: 120,
                                                width: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                              Positioned(
                                                top: 0,
                                                right: 0,
                                                child: IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.favorite,
                                                    color: AppColors.whiteColor,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                hotelNameData.hotelNameList[index].name,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: MyTextStyle.smallDetailsText.copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(height: 4),
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 20,
                                                    padding: const EdgeInsets.symmetric(horizontal: 6),
                                                    decoration: BoxDecoration(
                                                      color: AppColors.tealColor,
                                                      borderRadius: BorderRadius.circular(15),
                                                    ),
                                                    child: const Row(
                                                      children: [
                                                        Icon(Icons.star, color: AppColors.whiteColor, size: 14),
                                                        Icon(Icons.star, color: AppColors.whiteColor, size: 14),
                                                        Icon(Icons.star, color: AppColors.whiteColor, size: 14),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 5),
                                                  Text(
                                                    hotelNameData.hotelNameList[index].rated.toString(),
                                                    style: MyTextStyle.smallDetailsText.copyWith(
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(width: 3),
                                                  Expanded(
                                                    child: Text(
                                                      "(20 review)",
                                                      overflow: TextOverflow.ellipsis,
                                                      style: MyTextStyle.textFieldStyle.copyWith(
                                                        fontSize: 8,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                               const SizedBox(height: 4),
                                              Text(
                                                "Price: ${hotelNameData.hotelNameList[index].price}",
                                                style: MyTextStyle.smallDetailsText.copyWith(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )



                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
                ],
              ),
        ));
  }
}



