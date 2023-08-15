import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/styles.dart';

class CustomAppBarTop extends StatelessWidget {
  final String step;
  const CustomAppBarTop(this.step, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: AppColor.blackColor, size: 7.w,)),
        Text("Step $step of 8",
          style: fontMedium.copyWith(
              color: AppColor.gradient2,
              fontSize: 11.sp
          ),),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, 'menu_screen');
          },
          child: Text("Skip",
            style: fontMedium.copyWith(
                color: AppColor.fpTextColor,
                fontSize: 10.sp
            ),),
        ),
      ],
    );
  }
}