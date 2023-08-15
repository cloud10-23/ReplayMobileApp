import 'package:flutter/material.dart';
import 'package:replay_healthcare/view/profile/profile_screen.dart';
import 'package:sizer/sizer.dart';

import '../utils/colours.dart';
import '../utils/styles.dart';

class AccountInformation extends StatefulWidget {
  const AccountInformation({Key? key}) : super(key: key);

  @override
  State<AccountInformation> createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back, color: AppColor.blackColor, size: 7.w,)),
                Text("Account Information",
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
                          color: AppColor.gradient2,
                          fontSize: 11.sp
                      ),),),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              width: 30.w,
              height: 15.h,
              decoration: const BoxDecoration(
                  color: AppColor.mildGreyColor,
                  shape: BoxShape.circle
              ),
            ),
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
                      child: const TextWithValue("Name", "Deborah Moore")),
                  const Divider(),
                  const TextWithValue("Weight", "52 kg"),
                  const Divider(),
                  const TextWithValue("Date of Birth", "Nov 30, 1990"),
                  const Divider(),
                  const TextWithValue("Email", "deborah.moore@gmail.com"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextWithValue extends StatefulWidget {
  final String option, value;
  const TextWithValue(this.option, this.value, {Key? key}) : super(key: key);

  @override
  State<TextWithValue> createState() => _TextWithValueState();
}

class _TextWithValueState extends State<TextWithValue> {

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
                  fontSize: 11.sp
              ),),
          ),
          Text(widget.value,
            style: fontRegular.copyWith(
                color: AppColor.mildGreyColor,
                fontSize: 10.sp
            ),),
            SizedBox(width: 3.w,),
            Icon(Icons.keyboard_arrow_right, color: AppColor.mildGreyColor, size: 5.w,),
        ],
      ),
    );
  }
}
