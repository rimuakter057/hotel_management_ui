import 'package:flutter/material.dart';
import 'package:hotel_management/app/ui/utils/text_style.dart';
class CustomTextField extends StatelessWidget {
  final String labelText;
  final Size size;
  const CustomTextField({
    super.key,
    required this.size,
    required this.labelText,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          labelText: labelText,
          labelStyle: MyTextStyle.textFieldStyle,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          ),
          constraints: BoxConstraints(
              maxHeight: size.height * .05,
              maxWidth: size.width)),
    );
  }
}