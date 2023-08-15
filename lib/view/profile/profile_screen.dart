import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:replay_healthcare/view/profile/profile_data.dart';
import 'package:replay_healthcare/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  bool subscribed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
            ),
            Text("Profile",
              style: fontMedium.copyWith(
                  color: AppColor.blackColor,
                  fontSize: 20.sp
              ),),
            SizedBox(
              height: 2.h,
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 30.w,
                    height: 15.h,
                    decoration: const BoxDecoration(
                      color: AppColor.mildGreyColor,
                      shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  Text("Deborah Moore",
                    style: fontMedium.copyWith(
                        color: AppColor.blackColor,
                        fontSize: 14.sp
                    ),),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Expanded(
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(child: ProfileData("55 kg", Icons.monitor_weight_outlined)),
                        SizedBox(width: 3.w,),
                        const Expanded(child: ProfileData("167 cm", Icons.height)),
                        SizedBox(width: 3.w,),
                        const Expanded(child: ProfileData("26 Years", Icons.cake_outlined)),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    InkWell(
                        onTap: (){
                          setState(() {
                            subscribed = !subscribed;
                          });
                        },
                        child: CustomButton(subscribed ? "Subscribed" : "Kindly Subscribe")),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          vertical: 1.h
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: 0.5.h
                      ),
                      decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                                color: AppColor.mildGreyColor.withOpacity(0.3),
                                offset: const Offset(0,0),
                                blurRadius: 1.0
                            ),
                          ]
                      ),
                      child: Column(
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'account_information');
                              },
                              child: const TextWithArrow("Account", false)),
                          const Divider(),
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'my_workouts');
                              },
                              child: const TextWithArrow("My workouts", false)),
                          const Divider(),
                          TextWithArrow("Workout Reminders", false),
                          const Divider(),
                          TextWithArrow("Log out", false),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text("Settings",
                      style: fontRegular.copyWith(
                          color: AppColor.blackColor,
                          fontSize: 12.sp
                      ),),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          vertical: 1.h
                      ),
                      margin: EdgeInsets.symmetric(
                          horizontal: 0.5.h
                      ),
                      decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor.mildGreyColor.withOpacity(0.3),
                            offset: const Offset(0,0),
                            blurRadius: 1.0
                          ),
                        ]
                      ),
                      child: Column(
                        children: const [
                          TextWithArrow("Preferences", false),
                          Divider(),
                          TextWithArrow("Plan Settings", false),
                          Divider(),
                          TextWithArrow("Pin Lock", true),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class TextWithArrow extends StatefulWidget {
  final String option;
  final bool toggle;
  const TextWithArrow(this.option, this.toggle, {Key? key}) : super(key: key);

  @override
  State<TextWithArrow> createState() => _TextWithArrowState();
}

class _TextWithArrowState extends State<TextWithArrow> {

  bool switched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
        vertical: 1.h
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(widget.option,
              style: fontRegular.copyWith(
                  color: AppColor.blackColor,
                  fontSize: 12.sp
              ),),
          ),
          if(widget.toggle)...[
            CupertinoSwitch(
              value: switched,
              onChanged: (bool value) {
                setState((){
                  switched = value;
                });
              },
            ),
          ] else...[
            Icon(Icons.keyboard_arrow_right, color: AppColor.mildGreyColor, size: 6.w,),
          ]

        ],
      ),
    );
  }
}

