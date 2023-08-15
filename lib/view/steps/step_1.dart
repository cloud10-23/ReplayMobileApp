import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:replay_healthcare/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../widgets/custom_appbar_top.dart';

class Step1 extends StatefulWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {

  bool man = false;
  bool woman = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w
        ) + EdgeInsets.only(
          top: 6.h,
          bottom: 3.h
        ),
        child: Column(
          children: [
            const CustomAppBarTop("1"),
            SizedBox(height: 10.h,),
            Center(
              child: Text("Choose gender",
                style: fontMedium.copyWith(
                    color: AppColor.blackColor,
                    fontSize: 20.sp
                ),),
            ),
            SizedBox(height: 4.h,),
            Bounceable(
              onTap: (){
                setState(() {
                  woman = true;
                  man = false;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                    vertical: 2.h
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: woman ? AppColor.gradient2 : AppColor.fpTextColor.withOpacity(0.3),),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Container(
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
                      child: Image.asset(Images.woman, width: 10.w,),
                    ),
                    SizedBox(width: 5.w,),
                    Expanded(
                      child: Text("Woman",
                        style: fontMedium.copyWith(
                            color: AppColor.blackColor,
                            fontSize: 11.sp
                        ),),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Bounceable(
              onTap: (){
                setState(() {
                  woman = false;
                  man = true;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                    vertical: 2.h
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: man ? AppColor.gradient2 : AppColor.fpTextColor.withOpacity(0.3),),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Container(
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
                      child: Image.asset(Images.man, width: 10.w,),
                    ),
                    SizedBox(width: 5.w,),
                    Expanded(
                      child: Text("Man",
                        style: fontMedium.copyWith(
                            color: AppColor.blackColor,
                            fontSize: 11.sp
                        ),),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'step_2_screen');
                },
                child: const CustomButton("Continue")
            ),
          ],
        ),
      ),
    );
  }
}



