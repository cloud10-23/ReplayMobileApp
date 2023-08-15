import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:replay_healthcare/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/images.dart';
import '../../utils/styles.dart';
import '../widgets/custom_appbar_top.dart';

class Step8 extends StatefulWidget {
  const Step8({Key? key}) : super(key: key);

  @override
  State<Step8> createState() => _Step8State();
}

class _Step8State extends State<Step8> {

  List<Map<String, dynamic>> items = [
    {
      'part': "Knee",
      "selected": false,
      "image": Images.knee
    },
    {
      'part': "Shoulder",
      "selected": false,
      "image": Images.shoulder
    },
    {
      'part': "Elbow",
      "selected": false,
      "image": Images.elbow
    },
    {
      'part': "Neck",
      "selected": false,
      "image": Images.neck
    },
    {
      'part': "Hip",
      "selected": false,
      "image": Images.hip
    }
  ];
  List<int> indexList = [];

  List<Map<String, dynamic>> selectedItems = [];

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
            const CustomAppBarTop("8"),
            SizedBox(height: 6.h,),
            Center(
              child: Text("Choose workout part",
                style: fontMedium.copyWith(
                    color: AppColor.blackColor,
                    fontSize: 20.sp
                ),),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, _){
                  return SizedBox(height: 2.h,);
                },
                itemCount: items.length, // Replace with your actual list size
                itemBuilder: (context, index) {
                  bool selected = indexList.contains(index);
                  return Bounceable(
                    onTap: () {
                      if(indexList.contains(index)){
                        setState(() {
                          indexList.remove(index);
                        });
                      } else {
                        setState(() {
                          indexList.add(index);
                        });
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 4.w,
                          vertical: 2.h
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: selected ? AppColor.gradient2 : AppColor.fpTextColor.withOpacity(0.3),),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 2.w, vertical: 1.h
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blueAccent.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Image.asset(items[index]['image'], fit: BoxFit.cover, width: 10.w,),
                          ),
                          SizedBox(width: 3.w,),
                          Expanded(
                            child: Text(items[index]['part'],
                            style: fontRegular.copyWith(
                              color: AppColor.blackColor,
                              fontSize: 12.sp
                            ),),
                          ),
                          Container(
                            width: 5.w,
                            height: 2.5.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 0.4.w,
                              vertical: 0.2.h
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: selected ? AppColor.gradient2 : Colors.transparent,
                              border: Border.all(
                                color: selected ? AppColor.gradient2 : Colors.grey,
                              ),
                            ),
                            child: Center(
                              child: selected
                                  ? const Icon(
                                Icons.check,
                                size: 16,
                                color: AppColor.whiteColor,
                              )
                                  : null,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 4.h,),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'menu_screen');
                },
                child: const CustomButton("Continue")
            ),
          ],
        ),
      ),
    );
  }
}



