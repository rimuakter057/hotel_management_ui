import 'package:flutter/material.dart';

import '../../../utils/app_text.dart';
import '../../../utils/color.dart';
import '../../../utils/icon_url.dart';
import '../../../utils/text_style.dart';

class OptionBox extends StatelessWidget {
  final Color firstColor;
  final Color secondColor;
  final String assetImage;
  final String text;
  const OptionBox({
    super.key,
    required this.size, required this.firstColor, required this.secondColor, required this.assetImage, required this.text,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: size.height*.15,
        width: size.width*.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(colors: [
              firstColor,secondColor
            ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(assetImage,height:size.height*.07,
              width: size.width*.15,
              fit: BoxFit.fill,),
            Text(
              textAlign: TextAlign.center,
              text,style: MyTextStyle.buttonTextStyle,)
          ],),
      ),
    );
  }
}