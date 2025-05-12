import 'package:flutter/material.dart';

import '../../../utils/color.dart';
import '../../../utils/text_style.dart';

class DetailReview extends StatelessWidget {
  const DetailReview({
    super.key,
    required this.size, required this.rate,
  });
final String rate;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 2),
          height: size.height*.03,
          width: size.width*.18,
          decoration: BoxDecoration(
              color: AppColors.tealColor,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Text("10% off",style: MyTextStyle.buttonTextStyle.copyWith(fontSize: 14),),
        ),
        const SizedBox(width: 5,),
        Container(
          height: size.height*.03,
          width: size.width*.2,
          decoration: BoxDecoration(
              color: AppColors.tealColor,
              borderRadius: BorderRadius.circular(5)
          ),
          child: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star,color: Colors.white,size: 18,),
              const Icon(Icons.star,color: Colors.white,size: 18,),
              Text(rate,style: MyTextStyle.textFieldStyle.copyWith(color: AppColors.whiteColor,fontSize: 14),),
            ],
          )),
        ),
        Text("(25 reviews)",style:MyTextStyle.textFieldStyle.copyWith(fontSize: 14,color: Colors.grey),),
      ],
    );
  }
}