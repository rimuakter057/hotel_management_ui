import 'package:flutter/material.dart';

class ProfileOptionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const ProfileOptionWidget({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: screenHeight * 0.065, // ~53 on 812 height screen
        width: screenWidth * 0.9, // ~364 on 400 width screen
        margin: EdgeInsets.symmetric(vertical: screenWidth * 0.015),
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xFFE8E8E8), width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: screenHeight * 0.03, // ~24
                  width: screenHeight * 0.03,  // ~24
                  child: Icon(icon, color: Colors.black),
                ),
                SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: screenWidth * 0.04, // ~16 on 400 width
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            Icon(Icons.chevron_right, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
