import 'package:flutter/material.dart';
import 'package:replay_healthcare/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/styles.dart';
import '../widgets/custom_appbar_top.dart';

class Step5 extends StatefulWidget {
  const Step5({Key? key}) : super(key: key);

  @override
  State<Step5> createState() => _Step5State();
}

class _Step5State extends State<Step5> with SingleTickerProviderStateMixin{

  late TabController tabController;
  final TextEditingController weightControllerPounds = TextEditingController();
  final TextEditingController weightControllerKg = TextEditingController();

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
            const CustomAppBarTop("5"),
            SizedBox(height: 10.h,),
            Center(
              child: Text("Select weight",
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
                                controller: weightControllerPounds,
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
                                controller: weightControllerKg,
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
                                  hintText: "55",
                                  hintStyle: fontMedium.copyWith(
                                      fontSize: 18.sp,
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
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'step_6_screen');
                },
                child: const CustomButton("Continue")
            ),
          ],
        ),
      ),
    );
  }
}



