import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/strings.dart';

class Grade extends StatelessWidget {
  final String grade;
  const Grade(this.grade, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: 1.5.h,
          horizontal: 5.w
      ),
      decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(5.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.point_of_sale, color: AppColor.primaryColor, size: 6.w,),
          SizedBox(height: 2.h,),
          Text(Strings.grade,
            style: TextStyle(
                letterSpacing: 0.7,
                color: AppColor.blackColor,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp
            ),),
          SizedBox(height: 2.h,),
          Text(grade,
            style: TextStyle(
                letterSpacing: 0.7,
                color: AppColor.borderColor,
                fontWeight: FontWeight.w500,
                fontSize: 11.sp
            ),),
        ],
      ),
    );
  }
}
