import 'package:flutter/material.dart';
import 'package:replay_healthcare/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/styles.dart';
import '../widgets/custom_appbar_top.dart';

class Step3 extends StatefulWidget {
  const Step3({Key? key}) : super(key: key);

  @override
  State<Step3> createState() => _Step3State();
}

class _Step3State extends State<Step3> with TickerProviderStateMixin{

  late TabController tabController;
  late TabController tabController1;

  final TextEditingController heightControllerFeet = TextEditingController();
  final TextEditingController heightControllerCm = TextEditingController();

  final TextEditingController weightControllerPounds = TextEditingController();
  final TextEditingController weightControllerKg = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
    tabController1 = TabController(length: 2, vsync: this);

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
            const CustomAppBarTop("3"),
            SizedBox(height: 5.h,),
            Expanded(
              child: Column(
                children: [
                  Center(
                    child: Text("Select birth date",
                      style: fontMedium.copyWith(
                          color: AppColor.blackColor,
                          fontSize: 18.sp
                      ),),
                  ),
                  SizedBox(height: 2.h,),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                        vertical: 1.5.h
                    ),
                    decoration: BoxDecoration(
                        color: AppColor.tabBgColor,
                        borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                              "Select date",
                              style: fontMedium.copyWith(
                                  color: AppColor.blackColor,
                                  fontSize: 9.sp
                              )),
                        ),
                        InkWell(
                            onTap: (){

                            },
                            child: Icon(Icons.calendar_month_outlined, color: AppColor.blackColor, size: 7.w,))
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 2.h,),
                  Center(
                    child: Text("Select your height",
                      style: fontMedium.copyWith(
                          color: AppColor.blackColor,
                          fontSize: 18.sp
                      ),),
                  ),
                  SizedBox(height: 2.h,),
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
                              fontSize: 9.sp
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
                              SizedBox(height: 2.h,),
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
                                          fontSize: 16.sp,
                                          color: AppColor.blackColor
                                      ),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                        hintText: "6 ft",
                                        hintStyle: fontMedium.copyWith(
                                            fontSize: 16.sp,
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
                              SizedBox(height: 2.h,),
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
                                          fontSize: 16.sp,
                                          color: AppColor.blackColor
                                      ),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                        hintText: "180",
                                        hintStyle: fontMedium.copyWith(
                                            fontSize: 16.sp,
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
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Center(
                    child: Text("Select weight",
                      style: fontMedium.copyWith(
                          color: AppColor.blackColor,
                          fontSize: 18.sp
                      ),),
                  ),
                  SizedBox(height: 2.h,),
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
                          controller: tabController1,
                          labelColor: AppColor.blackColor,
                          unselectedLabelColor: AppColor.blackColor,
                          indicatorColor: Colors.transparent,
                          labelStyle: fontRegular.copyWith(
                              color: AppColor.blackColor,
                              fontSize: 9.sp
                          ),
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: AppColor.whiteColor
                          ),
                          tabs: const [
                            Tab(
                              text: "Pound",
                            ),
                            Tab(
                              text: "Kilogram",
                            ),
                          ]
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                        controller: tabController1,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 2.h,),
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
                                      controller: weightControllerPounds,
                                      cursorColor: AppColor.gradient2,
                                      style: fontMedium.copyWith(
                                          fontSize: 16.sp,
                                          color: AppColor.blackColor
                                      ),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                        hintText: "180",
                                        hintStyle: fontMedium.copyWith(
                                            fontSize: 16.sp,
                                            color: AppColor.mildGreyColor
                                        ),),
                                    ),
                                  ),
                                  SizedBox(width: 2.w,),
                                  Text("pounds",
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
                              SizedBox(height: 2.h,),
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
                                      controller: weightControllerKg,
                                      cursorColor: AppColor.gradient2,
                                      style: fontMedium.copyWith(
                                          fontSize: 16.sp,
                                          color: AppColor.blackColor
                                      ),
                                      keyboardType: TextInputType.number,
                                      textInputAction: TextInputAction.done,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: InputBorder.none,
                                        hintText: "55",
                                        hintStyle: fontMedium.copyWith(
                                            fontSize: 16.sp,
                                            color: AppColor.mildGreyColor
                                        ),),
                                    ),
                                  ),
                                  SizedBox(width: 2.w,),
                                  Text("kg",
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
                ],
              ),
            ),

            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'step_4_screen');
                },
                child: const CustomButton("Continue")
            ),
          ],
        ),
      ),
    );
  }
}



