import 'package:flutter/material.dart';
import 'package:replay_healthcare/utils/styles.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';

class ProfileData extends StatelessWidget {
  final String data;
  final IconData icon;
  const ProfileData(this.data, this.icon, {Key? key}) : super(key: key);

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
          Icon(icon, color: AppColor.blackColor, size: 6.w,),
          SizedBox(height: 1.h,),
          Text(data,
            style: fontRegular.copyWith(
                color: AppColor.blackColor,
                fontSize: 11.sp
            ),),
        ],
      ),
    );
  }
}
