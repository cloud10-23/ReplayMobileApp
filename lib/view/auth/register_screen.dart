import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:replay_healthcare/utils/colours.dart';
import 'package:replay_healthcare/utils/images.dart';
import 'package:replay_healthcare/utils/styles.dart';
import 'package:sizer/sizer.dart';

import '../widgets/custom_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool loading = false;
  bool _isChecked = false;
  final _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(height: 12.h,),
            Center(
              child: Text("Sign Up",
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
                  controller: nameController,
                  cursorColor: AppColor.gradient2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter your full name';
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
                    hintText: "Full Name",
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
                  controller: emailController,
                  cursorColor: AppColor.gradient2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter email';
                    }
                    return null;
                  },
                  style: fontRegular.copyWith(
                      fontSize: 10.sp,
                      color: AppColor.blackColor
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText: "Email",
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
                  controller: mobileController,
                  cursorColor: AppColor.gradient2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter mobile number';
                    }
                    return null;
                  },
                  style: fontRegular.copyWith(
                      fontSize: 10.sp,
                      color: AppColor.blackColor
                  ),
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText: "Phone",
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
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 6.w,
                  height: 3.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Checkbox(
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                    shape: const CircleBorder(
                      side: BorderSide.none
                    ),
                    activeColor: Colors.green,
                  ),
                ),
                SizedBox(width: 2.w,),
                Center(
                  child: Text(
                    "By continuing you accept our privacy policy",
                    style: fontRegular.copyWith(
                      fontSize: 9.sp,
                      color: AppColor.mildGreyColor,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 2.h,),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w
              ),
              child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, 'phone_verification_screen');
                  },
                  child: const CustomButton("Sign Up")),
            ),
            SizedBox(height: 10.h,),
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
              height: 5.h,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RichText(
                text: TextSpan(
                    text: 'Already have an account?',
                    style: fontMedium.copyWith(
                        color: AppColor.fpTextColor,
                        fontSize: 9.sp),
                    children: <TextSpan>[
                      TextSpan(text: ' Sign In',
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
