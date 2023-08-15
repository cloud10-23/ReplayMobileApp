import 'package:flutter/material.dart';
import 'package:replay_healthcare/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/styles.dart';
import '../widgets/custom_appbar_top.dart';

class Step4 extends StatefulWidget {
  const Step4({Key? key}) : super(key: key);

  @override
  State<Step4> createState() => _Step4State();
}

class _Step4State extends State<Step4> with SingleTickerProviderStateMixin{

  late TabController tabController;
  final TextEditingController heightControllerFeet = TextEditingController();
  final TextEditingController heightControllerCm = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

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
            const CustomAppBarTop("4"),
            SizedBox(height: 10.h,),
            Center(
              child: Text("Select height",
                style: fontMedium.copyWith(
                    color: AppColor.blackColor,
                    fontSize: 20.sp
                ),),
            ),
            SizedBox(height: 4.h,),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 1.5.w,
                  vertical: 0.5.h
                ),
                decoration: BoxDecoration(
                  color: AppColor.tabBgColor,
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: TabBar(
                  controller: tabController,
                    labelColor: AppColor.blackColor,
                    unselectedLabelColor: AppColor.blackColor,
                    indicatorColor: Colors.transparent,
                    labelStyle: fontRegular.copyWith(
                        color: AppColor.blackColor,
                        fontSize: 10.sp
                    ),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: AppColor.whiteColor
                    ),
                    tabs: const [
                      Tab(
                        text: "Feet",
                      ),
                      Tab(
                        text: "Centimetre",
                      ),
                      ]
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 4.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 25.w,
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.w,
                                vertical: 1.h,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColor.textFieldBorderColor,),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: TextFormField(
                                controller: heightControllerFeet,
                                cursorColor: AppColor.gradient2,
                                style: fontMedium.copyWith(
                                    fontSize: 18.sp,
                                    color: AppColor.blackColor
                                ),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: "6 ft",
                                  hintStyle: fontMedium.copyWith(
                                      fontSize: 18.sp,
                                      color: AppColor.mildGreyColor
                                  ),),
                              ),
                            ),
                            SizedBox(width: 2.w,),
                            Text("ft",
                              style: fontMedium.copyWith(
                                  color: AppColor.blackColor,
                                  fontSize: 12.sp
                              ),),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 4.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 25.w,
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.w,
                                vertical: 1.h,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColor.textFieldBorderColor,),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: TextFormField(
                                controller: heightControllerCm,
                                cursorColor: AppColor.gradient2,
                                style: fontMedium.copyWith(
                                    fontSize: 18.sp,
                                    color: AppColor.blackColor
                                ),
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  isDense: true,
                                  border: InputBorder.none,
                                  hintText: "180",
                                  hintStyle: fontMedium.copyWith(
                                      fontSize: 18.sp,
                                      color: AppColor.mildGreyColor
                                  ),),
                              ),
                            ),
                            SizedBox(width: 2.w,),
                            Text("cm",
                              style: fontMedium.copyWith(
                                  color: AppColor.blackColor,
                                  fontSize: 12.sp
                              ),),
                          ],
                        ),
                      ],
                    ),
              ]),
            ),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'step_5_screen');
                },
                child: const CustomButton("Continue")
            ),
          ],
        ),
      ),
    );
  }
}



