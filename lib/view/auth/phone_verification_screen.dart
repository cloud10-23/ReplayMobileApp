import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';
import '../../utils/styles.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20.h,),
          Center(
            child: Text("Phone verification",
              style: fontMedium.copyWith(
                  color: AppColor.blackColor,
                  fontSize: 20.sp
              ),),
          ),
          SizedBox(height: 2.h,),
          Text("We sent a code to your number",
            style: fontRegular.copyWith(
                color: AppColor.blackColor,
                fontSize: 12.sp
            ),),
          RichText(
            text: TextSpan(
                text: '9(173)605-76-09 ',
                style: fontMedium.copyWith(
                    color: AppColor.fpTextColor,
                    fontSize: 10.sp),
                children: <TextSpan>[
                  TextSpan(text: ' Change',
                      style: fontMedium.copyWith(
                          color: AppColor.gradient2,
                          fontSize: 10.sp),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to desired screen
                          Navigator.pop(context);
                        }
                  )
                ]
            ),
          ),
          SizedBox(height: 5.h,),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w
            ),
            child: OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 18.w,
              contentPadding: EdgeInsets.symmetric(
                vertical: 2.h
              ),
              spaceBetween: 2.w,
              style: fontMedium.copyWith(
                  fontSize: 14.sp
              ),
              otpFieldStyle: OtpFieldStyle(
                focusBorderColor: AppColor.gradient2,
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: $pin");
                Navigator.pushNamed(context, 'step_1_screen');
              },
            ),
          ),
          SizedBox(height: 3.h,),
          RichText(
            text: TextSpan(
                text: 'Didn\'t receive your code? ',
                style: fontMedium.copyWith(
                    color: AppColor.fpTextColor,
                    fontSize: 10.sp),
                children: <TextSpan>[
                  TextSpan(text: ' Resend',
                      style: fontMedium.copyWith(
                          color: AppColor.gradient2,
                          fontSize: 10.sp),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // navigate to desired screen
                          Navigator.pop(context);
                        }
                  )
                ]
            ),
          ),
        ],
      ),
    );
  }
}
