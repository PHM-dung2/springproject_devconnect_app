

import 'package:devconnect_app/style/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomOutlineButton extends StatelessWidget {
  final double width;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String title;

  const CustomOutlineButton({
    this.width = 80,
    this.backgroundColor = AppColors.bgColor,
    required this.onPressed,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, height: 45,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: BorderSide(
            color: AppColors.textFieldColor,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular( 5 ),
          ),
        ),
        child: Text( title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black
          ),
        ),
      ),
    );
  }
}