import 'package:flutter/material.dart';
import 'package:replay_healthcare/utils/colours.dart';
import 'package:replay_healthcare/view/widgets/appbar.dart';
import 'package:sizer/sizer.dart';

import '../utils/strings.dart';

class ExerciseListScreen extends StatefulWidget {
  const ExerciseListScreen({Key? key}) : super(key: key);

  @override
  State<ExerciseListScreen> createState() => _ExerciseListScreenState();
}

class _ExerciseListScreenState extends State<ExerciseListScreen> {

  List<Map<String, dynamic>> exerciseList = [
    {
      "arrow_up": true,
      "name": "Knee 1",
      "value": "2300"
    },
    {
      "arrow_up": true,
      "name": "Knee 2",
      "value": "2100"
    },
    {
      "arrow_up": true,
      "name": "Knee 3",
      "value": "2500"
    },
    {
      "arrow_up": false,
      "name": "Knee 4",
      "value": "2350"
    },
    {
      "arrow_up": false,
      "name": "Knee 5",
      "value": "2700"
    },
    {
      "arrow_up": false,
      "name": "Knee 6",
      "value": "2000"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: Column(
        children: [
          const CustomAppBar(backArrow: true, title: Strings.exercise),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, _){
                return SizedBox(height: 2.h,);
              },
              physics: const BouncingScrollPhysics(),
              itemCount: exerciseList.length,
              itemBuilder: (context, index){
                return ExerciseListItem(
                    exerciseList[index]['arrow_up'],
                  exerciseList[index]['name'],
                  exerciseList[index]['value'],
                  index + 1
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ExerciseListItem extends StatelessWidget {
  final bool arrowUp;
  final String name, value;
  final int count;
  const ExerciseListItem(this.arrowUp, this.name, this.value, this.count, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: 5.w,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 3.w,
        vertical: 1.5.h
      ),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 2.w,
                vertical: 1.h
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: arrowUp ? Colors.green.withOpacity(0.1) : Colors.red.withOpacity(0.1)
            ),
            child: Icon(arrowUp ? Icons.arrow_drop_up_sharp : Icons.arrow_drop_down_sharp, color: arrowUp ? Colors.green : Colors.red, size: 7.w,),
          ),
          SizedBox(width: 4.w,),
          Text(
            count.toString(),
          style: const TextStyle(
            fontSize: 18.0,
            color: AppColor.blackColor,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 4.w,),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 2.5.h
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.4)
            ),
          ),
          SizedBox(width: 4.w,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 15.0,
                      color: AppColor.blackColor,
                      fontWeight: FontWeight.normal
                  ),),
                Text(
                  value,
                  style: const TextStyle(
                      fontSize: 13.0,
                      color: AppColor.blackColor,
                      fontWeight: FontWeight.normal
                  ),),
              ],
            ),
          ),
          SizedBox(width: 4.w,),
          Icon(Icons.more_vert_rounded, color: AppColor.borderColor, size: 6.w,),
        ],
      ),
    );
  }
}

