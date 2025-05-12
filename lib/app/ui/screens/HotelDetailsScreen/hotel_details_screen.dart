import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_management/app/ui/utils/all_icon_size.dart';
import 'package:hotel_management/app/ui/utils/app_text.dart';
import 'package:hotel_management/app/ui/utils/color.dart';
import 'package:hotel_management/app/ui/utils/icon_url.dart';
import 'package:hotel_management/app/ui/utils/image_url.dart';
import 'package:hotel_management/app/ui/utils/text_style.dart';
import 'package:hotel_management/app/ui/widgets/custom_icon_circle.dart';

import 'Widget/description.dart';
import 'Widget/detail_review.dart';

class HotelDetailsScreen extends StatelessWidget {
  const HotelDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.tealColor,
        title: Text(
          AppText.hotelDetails,
          style: MyTextStyle.appbarText,
        ),
        leading: IconButton(
            onPressed: () {
            Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.whiteColor,
              size: AllIconSize.appBarArrow,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: AppColors.whiteColor,
                size: AllIconSize.appBarShear,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: AppColors.whiteColor,
                size: AllIconSize.appBarFavourite,
              )),
        ],
      ),
      floatingActionButton: Container(
        height: size.height * .05,
        width: size.width * .3,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
          color: AppColors.tealColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(
                Icons.takeout_dining_outlined,
                color: AppColors.whiteColor,
              ),
              const Spacer(),
              Text(
                "Book Now",
                style: MyTextStyle.buttonTextStyle,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: size.height * .35,
            width: size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      ImageUrl.hotelSix,
                    ),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.all(size.height * .02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      AppText.ayanaResort,
                      style: MyTextStyle.largeDetailsText,
                    ),
                    const Spacer(),
                    CustomIconCircle(
                      size: size,
                      icon: IconUrl.exactLocation,
                    ),
                  ],
                ),
                DetailReview(size: size),
                SizedBox(
                  height: size.height * .03,
                ),
                const Description(),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  "Contact Info",
                  style: MyTextStyle.largeDetailsText
                      .copyWith(color: AppColors.tealColor),
                ),
                Card(
                  elevation: 5,
                  shadowColor: AppColors.blackColor,
                  child: ListTile(
                    title: Text("Manager", style: MyTextStyle.largeDetailsText),
                    subtitle: const Text(
                      "Reception",
                      style: MyTextStyle.smallDetailsText,
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomIconCircle(
                            size: size,
                            height: 25,
                            width: 25,
                            icon: IconUrl.call),
                        SizedBox(
                          width: size.width * .02,
                        ),
                        CustomIconCircle(
                            size: size,
                            height: 25,
                            width: 25,
                            icon: IconUrl.email),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Text(
                  "\$350 USD/",
                  style: MyTextStyle.largeDetailsText.copyWith(
                      color: AppColors.tealColor, fontWeight: FontWeight.bold),
                ),
                const Text("Night", style: MyTextStyle.smallDetailsText),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
