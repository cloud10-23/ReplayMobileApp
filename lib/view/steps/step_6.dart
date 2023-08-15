import 'package:flutter/material.dart';
import 'package:replay_healthcare/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../widgets/custom_appbar_top.dart';

class Step6 extends StatefulWidget {
  const Step6({Key? key}) : super(key: key);

  @override
  State<Step6> createState() => _Step6State();
}

class _Step6State extends State<Step6> {
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
            const CustomAppBarTop("6"),
            const Spacer(),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'step_7_screen');
                },
                child: const CustomButton("Continue")
            ),
          ],
        ),
      ),
    );
  }
}



