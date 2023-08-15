import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utils/colours.dart';
import '../../utils/strings.dart';
import '../widgets/appbar.dart';

class TypeSelectionScreen extends StatefulWidget {
  const TypeSelectionScreen({Key? key}) : super(key: key);

  @override
  State<TypeSelectionScreen> createState() => _TypeSelectionScreenState();
}

class _TypeSelectionScreenState extends State<TypeSelectionScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(backArrow: true, title: Strings.type),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.h,
                        width: 25.w,
                        child: const CircularProgressIndicator(
                          strokeWidth: 7.0,
                          value: 0.25,
                          color: AppColor.beginnerColor,
                          backgroundColor: AppColor.whiteColor,
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Text(Strings.beginner,
                        style: TextStyle(
                            color: AppColor.beginnerColor,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5
                        ),),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.h,
                        width: 25.w,
                        child: const CircularProgressIndicator(
                          strokeWidth: 7.0,
                          value: 0.5,
                          color: AppColor.intermediateColor,
                          backgroundColor: AppColor.whiteColor,
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Text(Strings.intermediate,
                        style: TextStyle(
                            color: AppColor.intermediateColor,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5
                        ),),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 12.h,
                        width: 25.w,
                        child: const CircularProgressIndicator(
                          strokeWidth: 7.0,
                          value: 1.0,
                          color: AppColor.advancedColor,
                          backgroundColor: AppColor.whiteColor,
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Text(Strings.advanced,
                        style: TextStyle(
                            color: AppColor.advancedColor,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          // Padding(
          //   padding: EdgeInsets.symmetric(
          //     horizontal: 5.w,
          //     vertical: 2.h
          //   ),
          //   child: GestureDetector(
          //       onTap: (){
          //         Navigator.pushNamed(context, 'exercise_list_screen');
          //       },
          //       child: const CustomButton("ADD", AppColor.primaryColor, AppColor.whiteColor)),
          // ),
        ],
      ),
    );
  }
}
