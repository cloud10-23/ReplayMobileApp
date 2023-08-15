import 'package:flutter/material.dart';
import 'package:replay_healthcare/view/home/percentage_bubble.dart';
import 'package:replay_healthcare/view/home/points.dart';
import 'package:replay_healthcare/view/widgets/appbar.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/strings.dart';
import 'grade.dart';
import 'level.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     const CustomAppBar(backArrow: true, title: Strings.dashboard),
      //     Container(
      //       margin: EdgeInsets.only(
      //         top: 3.h,
      //         right: 5.w,
      //         bottom: 5.h
      //       ),
      //       padding: EdgeInsets.symmetric(
      //         horizontal: 5.w,
      //         vertical: 1.4.h
      //       ),
      //       decoration: BoxDecoration(
      //         border: Border.all(color: AppColor.borderColor.withOpacity(0.6)),
      //         borderRadius: BorderRadius.circular(5.0),
      //       ),
      //       child: Row(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           Text("Today",
      //             style: TextStyle(
      //                 letterSpacing: 0.7,
      //                 color: AppColor.borderColor.withOpacity(0.6),
      //                 fontWeight: FontWeight.w600,
      //                 fontSize: 10.sp
      //             ),),
      //           SizedBox(width: 3.w,),
      //           Icon(Icons.keyboard_arrow_down_outlined, color: AppColor.borderColor.withOpacity(0.6), size: 5.w,),
      //         ],
      //       ),
      //     ),
      //     const Center(child: PercentageBubble()),
      //     SizedBox(height: 5.h,),
      //     Padding(
      //       padding: EdgeInsets.symmetric(
      //         horizontal: 5.w
      //       ),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //           const Expanded(child: Points("233")),
      //           SizedBox(width: 3.w,),
      //           const Expanded(child: Level("3")),
      //           SizedBox(width: 3.w,),
      //           const Expanded(child: Grade("A")),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
