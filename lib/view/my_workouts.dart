import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/colours.dart';
import '../utils/styles.dart';

class MyWorkouts extends StatefulWidget {
  const MyWorkouts({Key? key}) : super(key: key);

  @override
  State<MyWorkouts> createState() => _MyWorkoutsState();
}

class _MyWorkoutsState extends State<MyWorkouts> with SingleTickerProviderStateMixin{

  late TabController tabController;
  final TextEditingController weightController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: AppColor.blackColor, size: 7.w,)),
                Text("My Workouts",
                  style: fontMedium.copyWith(
                      color: AppColor.blackColor,
                      fontSize: 11.sp
                  ),),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text("Save",
                    style: fontMedium.copyWith(
                        color: Colors.transparent,
                        fontSize: 11.sp
                    ),),),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                  horizontal: 1.5.w,
                  vertical: 0.5.h
              ),
              decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(30.0)
              ),
              child: Center(
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(
                    horizontal: 10.w
                  ),
                    isScrollable: true,
                    controller: tabController,
                    labelColor: AppColor.whiteColor,
                    unselectedLabelColor: AppColor.blackColor,
                    indicatorColor: Colors.transparent,
                    labelStyle: fontRegular.copyWith(
                        color: AppColor.blackColor,
                        fontSize: 10.sp
                    ),
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: AppColor.gradient2
                    ),
                    tabs: const [
                      Tab(
                        text: "History",
                      ),
                      Tab(
                        text: "Last",
                      ),
                      Tab(
                        text: "Overall",
                      ),
                    ]
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                  children: const [
                    MyWorkoutList(),
                    MyWorkoutList(),
                    MyWorkoutList(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWorkoutList extends StatelessWidget {
  const MyWorkoutList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("November 15, 2021",
              style: fontRegular.copyWith(
                  color: AppColor.fpTextColor,
                  fontSize: 10.sp
              ),),
            Text("1 workout, 32 minutes",
              style: fontRegular.copyWith(
                  color: AppColor.fpTextColor,
                  fontSize: 10.sp
              ),),
          ],
        ),
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
                    Text("300 pts",
                      style: fontRegular.copyWith(
                          color: AppColor.blackColor,
                          fontSize: 11.sp
                      ),),
                  ],
                ),
              ),
              SizedBox(width: 5.w,),
              Icon(Icons.check_circle, color: AppColor.gradient2, size: 5.w,),
            ],
          ),
        ),
      ],
    );
  }
}
