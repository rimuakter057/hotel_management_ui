
import 'package:flutter/material.dart';
import 'package:hotel_management/app/ui/utils/app_text.dart';
import 'package:hotel_management/app/ui/utils/color.dart';
import 'package:hotel_management/app/ui/utils/text_style.dart';
import 'package:readmore/readmore.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Description",
              style:TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: AppColors.blackColor
          )
          ),
      SingleChildScrollView(
        child: ReadMoreText(
        AppText.descriptionText,
        trimMode: TrimMode.Line,
        style:TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: AppColors.blackColor
        ) ,
        trimLines: 3,
        colorClickableText: Colors.pink,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        moreStyle:TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: AppColors.tealColor
        ),
          lessStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColors.tealColor)
          ),
      )
        ],
      ),
    );
  }
}
