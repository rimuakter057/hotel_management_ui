import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../utils/text_style.dart';

class DetailReview extends StatelessWidget {
  const DetailReview({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: size.height*.03,
          width: size.width*.18,
          decoration: BoxDecoration(
              color: AppColors.tealColor,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Center(child: Text("10% off",style: MyTextStyle.buttonTextStyle,)),
        ),
        const SizedBox(width: 5,),
        Container(
          height: size.height*.03,
          width: size.width*.15,
          decoration: BoxDecoration(
              color: AppColors.tealColor,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star,color: Colors.red,size: 20,),
              const Icon(Icons.star,color: Colors.red,size: 20,),
              Text("4.5",style: MyTextStyle.textFieldStyle.copyWith(color: AppColors.whiteColor),),
            ],
          )),
        ),
        Text("(25 reviews)",style:MyTextStyle.textFieldStyle.copyWith(fontSize: 14,color: Colors.grey),),
      ],
    );
  }
}