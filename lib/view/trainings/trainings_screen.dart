import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:replay_healthcare/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/styles.dart';

class TrainingsScreen extends StatefulWidget {
  const TrainingsScreen({Key? key}) : super(key: key);

  @override
  State<TrainingsScreen> createState() => _TrainingsScreenState();
}

class _TrainingsScreenState extends State<TrainingsScreen> {

  MethodChannel unityChannel = const MethodChannel('unity_channel');

  // Define a method to send a message to Unity
  Future<void> sendMessageToUnity(String message) async {
    try {
      await unityChannel.invokeMethod('sendMessage', message);
    } on PlatformException catch (e) {
      print('Error communicating with Unity: ${e.message}');
    }
  }

  void launchUnityActivity() {
    const platform = MethodChannel('unity_channel');
    try {
      platform.invokeMethod('launchUnityActivity');
    } on PlatformException catch (e) {
      print('Error launching Unity activity: ${e.message}');
    }
  }

  List<Map<String, dynamic>> activityList = [
    {
      "name": "Left Knee 1",
      "level": "Beginner",
      "time": "32 min",
      "is_favorite": false
    },
    {
      "name": "Left Knee 2",
      "level": "Beginner",
      "time": "21 min",
      "is_favorite": true
    },
    {
      "name": "Right Knee 1",
      "level": "Beginner",
      "time": "28 min",
      "is_favorite": true
    },
    {
      "name": "Right Knee 2",
      "level": "Beginner",
      "time": "20 min",
      "is_favorite": false
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 5.w
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 7.h,
              ),
              Text("Choose activity",
                style: fontMedium.copyWith(
                    color: AppColor.blackColor,
                    fontSize: 18.sp
                ),),
              SizedBox(
                height: 2.h,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: activityList.length,
                  itemBuilder: (context, index){
                    return Bounceable(
                      onTap: (){
                        Navigator.pushNamed(context, "unity_screen");
                      },
                      child: ActivityList(
                        activityList[index]['name'],
                        activityList[index]['level'],
                        activityList[index]['time'],
                        activityList[index]['is_favorite']
                      ),
                    );
                  },
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4.h,
                      crossAxisSpacing: 4.w,
                      childAspectRatio: 0.9
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text("Level",
                style: fontMedium.copyWith(
                    color: AppColor.blackColor,
                    fontSize: 18.sp
                ),),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.w,
                      vertical: 1.5.h
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.gradient2,
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    child: Text("Beginner",
                    style: fontMedium.copyWith(
                      color: AppColor.whiteColor,
                      fontSize: 10.sp
                    ),),
                  ),
                  SizedBox(width: 3.w,),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 1.5.h
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.borderColor, width: 0.5),
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    child: Text("Medium",
                      style: fontMedium.copyWith(
                          color: AppColor.fpTextColor,
                          fontSize: 10.sp
                      ),),
                  ),
                  SizedBox(width: 3.w,),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                        vertical: 1.5.h
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.borderColor, width: 0.5),
                        borderRadius: BorderRadius.circular(30.0)
                    ),
                    child: Text("Advanced",
                      style: fontMedium.copyWith(
                          color: AppColor.fpTextColor,
                          fontSize: 10.sp
                      ),),
                  ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              InkWell(
                  onTap: (){
                    // launchUnityActivity();
                    Navigator.pushNamed(context, 'summary_screen');
                  },
                  child: const CustomButton("Continue")),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActivityList extends StatefulWidget {
  final String name, level, time;
  final bool isFavorite;
  const ActivityList(this.name, this.level, this.time, this.isFavorite, {Key? key}) : super(key: key);

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: 15.h,
              decoration: BoxDecoration(
                color: AppColor.mildGreyColor.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10.0)
              ),
            ),
            Positioned(
                top: 1.h,
                right: 2.w,
                child: Icon(
                  widget.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: widget.isFavorite ? Colors.red : AppColor.whiteColor, size: 6.w,)),
          ],
        ),
        SizedBox(height: 1.5.h,),
        Text(widget.name,
          style: fontMedium.copyWith(
              color: AppColor.blackColor,
              fontSize: 11.sp
          ),),
        SizedBox(height: 0.5.h,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.level,
              style: fontMedium.copyWith(
                  color: AppColor.gradient2,
                  fontSize: 8.5.sp
              ),),
            SizedBox(width: 2.w,),
            const CircleAvatar(
              radius: 2.0,
              backgroundColor: AppColor.fpTextColor,
            ),
            SizedBox(width: 2.w,),
            Text(widget.time,
              style: fontMedium.copyWith(
                  color: AppColor.fpTextColor,
                  fontSize: 8.5.sp
              ),),
          ],
        ),
      ],
    );
  }
}
