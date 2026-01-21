import 'package:flutter/material.dart';
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
  const HotelDetailsScreen({super.key, required this.hotelName, required this.rate, required this.price});
  final String hotelName;

  final String rate;
  final String price;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.tealColor,
        title: const Text(
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
              icon: const Icon(
                Icons.share,
                color: AppColors.whiteColor,
                size: AllIconSize.appBarShear,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border,
                color: AppColors.whiteColor,
                size: AllIconSize.appBarFavourite,
              )),
        ],
      ),
      floatingActionButton: Container(
        height: size.height * .04,
        width: size.width * .45,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
          color: AppColors.tealColor,
        ),
        child: const Padding(
          padding:  EdgeInsets.all(4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Icon(
                Icons.takeout_dining_outlined,
                color: AppColors.whiteColor,
              ),
               SizedBox(width: 2,),
              Text(
                overflow: TextOverflow.ellipsis,
                "Book Now",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: AppColors.whiteColor
                  )
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 8,),
                  ///image
              Container(

                height: size.height * .3,
                width: size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        image: AssetImage(
                          ImageUrl.hotelSix,
                        ),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(height: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///name
                  Row(
                    children: [
                       Text(
                        hotelName,
                           style:const TextStyle(
                               fontWeight: FontWeight.w500,
                               fontSize: 16,
                               color: AppColors.blackColor
                           )
                      ),
                      const Spacer(),
                      const CustomIconCircle(
                        icon: IconUrl.exactLocation,
                      ),
                    ],
                  ),
                  DetailReview(size: size, rate: rate,),
                  SizedBox(
                    height: size.height * .03,
                  ),
                  const Description(),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  const Text(
                    "Contact Info",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.tealColor
                    )
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: AppColors.blackColor,
                    child: ListTile(
                      title: const Text("Manager", style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.blackColor
                      )
                      ),
                      subtitle: const Text(
                        "Reception",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: AppColors.blackColor
                          )
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const CustomIconCircle(


                              icon: IconUrl.call),
                          SizedBox(
                            width: size.width * .02,
                          ),
                          const CustomIconCircle(

                              icon: IconUrl.email),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .02,
                  ),
                  Text(
                    price,
                    style: MyTextStyle.largeDetailsText.copyWith(
                        color: AppColors.tealColor, fontWeight: FontWeight.bold),
                  ),
                  const Text("Night", style: MyTextStyle.smallDetailsText),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
