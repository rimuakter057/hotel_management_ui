
import 'package:flutter/material.dart';
import 'package:hotel_management/app/ui/utils/app_text.dart';
import 'package:hotel_management/app/ui/utils/color.dart';
import 'package:hotel_management/app/ui/utils/text_style.dart';
import 'package:readmore/readmore.dart';

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Description",style:MyTextStyle.largeDetailsText,),
      SingleChildScrollView(
        child: ReadMoreText(
        AppText.descriptionText,
        trimMode: TrimMode.Line,
        style:MyTextStyle.smallDetailsText ,
        trimLines: 3,
        colorClickableText: Colors.pink,
        trimCollapsedText: 'Show more',
        trimExpandedText: 'Show less',
        moreStyle:MyTextStyle.textFieldStyle.copyWith(fontWeight: FontWeight.bold),
          lessStyle: MyTextStyle.textFieldStyle.copyWith(fontWeight: FontWeight.bold,color: AppColors.yellowShade),
        ),
      )
        ],
      ),
    );
  }
}
