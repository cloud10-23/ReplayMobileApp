import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:replay_healthcare/utils/colours.dart';
import 'package:replay_healthcare/utils/images.dart';
import 'package:replay_healthcare/utils/styles.dart';
import 'package:sizer/sizer.dart';

import '../widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(height: 25.h,),
            Center(
              child: Text("Sign In",
                style: fontSemiBold.copyWith(
                    color: AppColor.blackColor,
                    fontSize: 20.sp
                ),),
            ),
            SizedBox(height: 2.h,),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 1.5.h,
              ),
              decoration: BoxDecoration(
                color: AppColor.textFieldBgColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: TextFormField(
                  controller: mobileController,
                  cursorColor: AppColor.gradient2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter email/mobile number';
                    }
                    return null;
                  },
                  style: fontRegular.copyWith(
                      fontSize: 10.sp,
                      color: AppColor.blackColor
                  ),
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText: "Phone/Email",
                    hintStyle: fontRegular.copyWith(
                        fontSize: 10.sp,
                        color: AppColor.fpTextColor
                    ),),
                ),
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 1.5.h,
              ),
              decoration: BoxDecoration(
                color: AppColor.textFieldBgColor,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Center(
                child: TextFormField(
                  controller: passwordController,
                  cursorColor: AppColor.gradient2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter password';
                    }
                    return null;
                  },
                  style: fontRegular.copyWith(
                      fontSize: 10.sp,
                      color: AppColor.blackColor
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText: "Password",
                    hintStyle: fontRegular.copyWith(
                        fontSize: 10.sp,
                        color: AppColor.fpTextColor
                    ),),
                ),
              ),
            ),
            SizedBox(height: 3.h,),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 5.w
              ),
              child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'menu_screen');
                  },
                  child: const CustomButton("Sign In")),
            ),
            SizedBox(height: 2.h,),
            Column(
              children: [
                Text("Forgot Password?",
                  style: fontMedium.copyWith(
                      color: AppColor.fpTextColor,
                      fontSize: 9.sp
                  ),),
              ],
            ),
            SizedBox(height: 15.h,),
            Center(
              child: Text("Sign in with",
                style: fontMedium.copyWith(
                    color: AppColor.blackColor,
                    fontSize: 14.sp
                ),),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Images.apple, width: 9.w,),
                SizedBox(width: 7.w,),
                Image.asset(Images.facebook, width: 9.w,),
                SizedBox(width: 7.w,),
                Image.asset(Images.google, width: 9.w,),
              ],
            ),
            const Spacer(),
            SizedBox(
              height: 3.h,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: fontMedium.copyWith(
                        color: AppColor.fpTextColor,
                        fontSize: 9.sp),
                    children: <TextSpan>[
                      TextSpan(text: ' Sign Up',
                          style: fontMedium.copyWith(
                              color: AppColor.gradient2,
                              fontSize: 10.sp),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                              Navigator.pushNamed(context, 'register_screen');
                            }
                      )
                    ]
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
          ],
        ),
      ),
    );
  }
}

