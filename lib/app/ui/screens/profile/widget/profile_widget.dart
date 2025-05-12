import 'package:flutter/material.dart';
import 'package:hotel_management/app/ui/utils/color.dart';







class ProfileWidget extends StatelessWidget {

  final String ?name;
  final String? subtitle;

  const ProfileWidget({
    super.key,
     this.subtitle, this.name,
  });

  @override
  Widget build(BuildContext context) {
     final width = MediaQuery.sizeOf(context).width;
      final cardHeight = width * 0.5;
    final cardWidth =width  * 0.4;

    final fontSizeName = width* 0.045;
    final fontSizeSubtitle =width* 0.035;

    return SizedBox(
      height: cardHeight,
      width: cardWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [



          // Name
          Text(
            name??"RIMU",
            style: TextStyle(
              color: AppColors.tealColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),

          // Subtitle
          Text(
            subtitle??"App Developer",
            style: TextStyle(
              fontSize: 20,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}


