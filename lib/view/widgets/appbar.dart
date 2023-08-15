import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utils/colours.dart';

class CustomAppBar extends StatelessWidget {
  final bool backArrow;
  final String title;
  const CustomAppBar({Key? key, required this.backArrow, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 5.w
      ) + EdgeInsets.only(
        top: 7.h,
        bottom: 3.h
      ),
      decoration: const BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.arrow_back, color: backArrow ? AppColor.whiteColor : Colors.transparent, size: 6.w,),
          Text(title,
          style: TextStyle(
            letterSpacing: 0.7,
            color: AppColor.whiteColor,
            fontWeight: FontWeight.w600,
            fontSize: 14.sp
          ),),
          Icon(Icons.more_vert_rounded, color: AppColor.whiteColor, size: 6.w,),
        ],
      ),
    );
  }
}
