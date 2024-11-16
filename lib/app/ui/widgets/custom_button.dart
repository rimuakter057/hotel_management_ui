import 'package:flutter/material.dart';

import '../utils/app_text.dart';
import '../utils/color.dart';
import '../utils/text_style.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final void Function()? onTap;
  const CustomButton({
    super.key,
    required this.size, required this.buttonName, this.onTap,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .06,
      width: size.width,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
              backgroundColor: AppColors.tealColor),
          child:  Text(buttonName,style: MyTextStyle.buttonTextStyle,
          )),
    );
  }
}