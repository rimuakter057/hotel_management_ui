import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/icon_url.dart';

class CustomIconCircle extends StatelessWidget {
  final String icon;
  final double? height;
  final double? width;
  final Color? color;
  final Color? iconColor;
  const CustomIconCircle({
    super.key,
    required this.size, required this.icon, this.color, this.iconColor, this.height, this.width,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:50,
      width:50,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color:color?? AppColors.tealColor),
      child: Center(
          child: Image.asset(
           icon,color:color?? AppColors.whiteColor,
            fit: BoxFit.cover,
          )),
    );
  }
}