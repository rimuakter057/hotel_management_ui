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
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: size.height * 0.07),
                  // Search bar
                  Container(
                    margin: const EdgeInsets.all(20),
                    height: size.height * 0.06,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "search",
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),

                  Expanded(
                    child: Container(
                      width: size.width,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 8),
                               Row(
                                children: [
                                  const Text(
                                    "City Name",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: AppColors.blackColor),
                                  ),
                                  const Spacer(),
                                  _buildViewAll(),
                                ],
                              ),
                              const SizedBox(height: 8),
                              // Horizontal list of places
                              SizedBox(
                                height: 80,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: placeData.homeDistrictList.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    final place = placeData.homeDistrictList[index];
                                    return SizedBox(
                                      width: size.width * 0.16,
                                      child: Column(
                                        children: [
                                          ClipOval(
                                            child: Image.asset(
                                              place.image,
                                              height: 60,
                                              width: 60,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          const SizedBox(height: 4),
                                          Flexible(
                                            child: Text(
                                              place.name,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: AppColors.blackColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  separatorBuilder: (_, __) => const SizedBox(width: 6),
                                ),
                              ),
                              const SizedBox(height: 24),
                      ///Near===================================================================
                              Row(
                                children: [
                                  const Text(
                                    "Hotel Near You",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        color: AppColors.blackColor),
                                  ),
                                  const Spacer(),
                                  _buildViewAll(),
                                ],
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                height: 220,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: placeData.homeDistrictList.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    final place = placeData.homeDistrictList[index];
                                    return SizedBox(
                                      width: size.width * 0.35,
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
                                                  top: 10,
                                                  right: 10,
                                                  child: Container(
                                                    height: 35, // circle size
                                                    width: 35,
                                                    decoration: const BoxDecoration(
                                                      color: Colors.black12, // background color
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Center(
                                                      child: IconButton(
                                                        padding: EdgeInsets.zero, // extra space remove
                                                        constraints: const BoxConstraints(), // default constraint remove
                                                        onPressed: () {},
                                                        icon: const Icon(
                                                          Icons.favorite,
                                                          color: AppColors.whiteColor,
                                                          size: 20,
                                                        ),
                                                      ),
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
                                                  style: const TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors.blackColor
                                                  )
                                                ),
                                                const SizedBox(height: 4),
                                                Row(
                                                  children: [
                                                    Container(
                                                      height: 20,
                                                      padding: const EdgeInsets.symmetric(horizontal: 6),
                                                      decoration: BoxDecoration(
                                                        color: AppColors.whiteColor,
                                                        borderRadius: BorderRadius.circular(15),
                                                      ),
                                                      child: const Row(
                                                        children: [
                                                          Icon(Icons.star, color: Colors.amber, size: 14),
                                                          Icon(Icons.star, color: Colors.amber, size: 14),
                                                          Icon(Icons.star, color: Colors.amber, size: 14),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(width: 5),
                                                    Text(
                                                      hotelNameData.hotelNameList[index].rated.toString(),
                                                      style: MyTextStyle.smallDetailsText.copyWith(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
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
                                                Row(
                                                  children: [
                                                    Text(
                                                        hotelNameData.hotelNameList[index].price,
                                                        style: const TextStyle(
                                                            fontWeight: FontWeight.w700,
                                                            fontSize: 18,
                                                            color: AppColors.tealColor
                                                        )
                                                    ),

                                                    const Text(
                                                        " (Night)",
                                                        style: TextStyle(
                                                            fontWeight: FontWeight.w400,
                                                            fontSize: 12,
                                                            color: Colors.grey
                                                        )
                                                    ),
                                                  ],
                                                ),

                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  separatorBuilder: (_, __) => const SizedBox(width: 6),
                                ),
                              ),



              ///Recommended===================================================================================================
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: hotelNameData.hotelNameList.length + 1,
                                itemBuilder: (context, index) {
                                  if (index == 0) {
                                    // Heading text
                                    return  Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            "Recommended Hotel",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 16,
                                              color: AppColors.blackColor,
                                            ),
                                          ),
                                          _buildViewAll(),
                                        ],
                                      ),
                                    );
                                  }

                                  final hotel = hotelNameData.hotelNameList[index - 1];

                                  return Padding(
                                    padding: const EdgeInsets.only(bottom: 12.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(HotelDetailsScreen(
                                          hotelName: hotel.name,
                                          rate: hotel.rated.toString(),
                                          price: hotel.price,
                                        ));
                                      },
                                      child: Card(
                                        margin: EdgeInsets.zero,              // no gap
                                        elevation: 0,                         // remove shadow gap
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.zero,   // optional
                                        ),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:const BorderRadius.all(Radius.circular(12)),
                                              child: Image.asset(
                                                hotel.image,
                                                height: 90,
                                                width: 120,
                                                fit: BoxFit.cover,
                                              ),
                                            ),

                                            const SizedBox(width: 12,),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,

                                                  children: [
                                                    Text(
                                                      hotel.name,
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w400,
                                                        color: AppColors.blackColor,
                                                      ),

                                                    ),
                                                    const SizedBox(height: 4,),
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
                                                          hotel.rated.toString(),
                                                          style: MyTextStyle.smallDetailsText.copyWith(
                                                              fontSize: 12, fontWeight: FontWeight.bold),
                                                        ),
                                                        const SizedBox(width: 6),
                                                        Text(
                                                          "(20 review)",
                                                          overflow: TextOverflow.ellipsis,
                                                          style: MyTextStyle.textFieldStyle.copyWith(
                                                              fontSize: 10, color: Colors.grey),
                                                        ),
                                                      ],
                                                    ),
                                                    const SizedBox(height: 4,),
                                                    Row(
                                                      children: [
                                                        const Text(
                                                          "Price: ",
                                                          style: TextStyle(
                                                              fontWeight: FontWeight.w400,
                                                              fontSize: 14,
                                                              color: AppColors.blackColor),
                                                        ),
                                                        Text(
                                                          hotel.price,
                                                          style: const TextStyle(
                                                              fontWeight: FontWeight.w700,
                                                              fontSize: 16,
                                                              color: AppColors.tealColor),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),


                              const SizedBox(height: 16),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text _buildViewAll() {
    return const Text(
                                  "View All",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: AppColors.tealColor,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.tealColor,
                                  ),
                                );
  }
}

























