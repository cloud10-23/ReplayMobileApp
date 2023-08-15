import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/styles.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  const CustomButton(this.buttonText, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
          vertical: 1.5.h
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColor.gradient1,
              AppColor.gradient2,
            ],
          )
      ),
      child: Center(
        child: Text(buttonText,
          style: fontMedium.copyWith(
              color: AppColor.whiteColor,
              fontSize: 11.sp
          ),),
      ),
    );
  }
}