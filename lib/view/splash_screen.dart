import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/colours.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  getPrefs() async {
    Timer(
        const Duration(seconds: 2), () async {
      Navigator.pushNamed(context, 'login_screen');
    }
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(Icons.health_and_safety_outlined, color: AppColor.primaryColor, size: 7.w,),
    );
  }
}
