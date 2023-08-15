import 'package:flutter/material.dart';
import 'package:replay_healthcare/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../utils/colours.dart';
import '../utils/images.dart';
import '../utils/styles.dart';

class Summary extends StatefulWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 5.w
        ) + EdgeInsets.only(
            top: 6.h,
            bottom: 3.h
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: AppColor.blackColor, size: 7.w,)),
                Text("Summary",
                  style: fontMedium.copyWith(
                      color: AppColor.blackColor,
                      fontSize: 11.sp
                  ),),
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.upload_rounded, color: AppColor.blackColor, size: 6.w,)),
              ],
            ),
            SizedBox(height: 4.h,),
            Text("Workout",
              style: fontMedium.copyWith(
                  color: AppColor.blackColor,
                  fontSize: 18.sp
              ),),
            SizedBox(height: 2.h,),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 3.w,
                  vertical: 1.5.h
              ),
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Container(
                    width: 16.w,
                    height: 8.h,
                    padding: EdgeInsets.symmetric(
                        horizontal: 2.w,
                        vertical: 1.h
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff786CFF2A),
                          Color(0xff5AC8FA22),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Left knee 1",
                          style: fontRegular.copyWith(
                              color: AppColor.blackColor,
                              fontSize: 11.sp
                          ),),
                        Text("08:30 - 09:15",
                          style: fontRegular.copyWith(
                              color: AppColor.blackColor,
                              fontSize: 11.sp
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h,),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 2.h
              ),
              decoration: BoxDecoration(
                color: AppColor.whiteColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("00:45:15",
                          style: fontRegular.copyWith(
                              color: AppColor.blackColor,
                              fontSize: 11.sp
                          ),),
                        Text("Total time",
                          style: fontRegular.copyWith(
                              color: AppColor.blackColor,
                              fontSize: 9.sp
                          ),),
                      ],
                    ),
                  ),
                  SizedBox(width: 5.w,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("300",
                          style: fontRegular.copyWith(
                              color: AppColor.blackColor,
                              fontSize: 11.sp
                          ),),
                        Text("Points",
                          style: fontRegular.copyWith(
                              color: AppColor.blackColor,
                              fontSize: 9.sp
                          ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.h,),
            const Spacer(),
            SizedBox(height: 4.h,),
            const CustomButton("Back"),
          ],
        ),
      ),
    );
  }
}
