import 'package:flutter/material.dart';
import 'package:replay_healthcare/view/widgets/custom_button.dart';
import 'package:sizer/sizer.dart';

import '../widgets/custom_appbar_top.dart';

class Step7 extends StatefulWidget {
  const Step7({Key? key}) : super(key: key);

  @override
  State<Step7> createState() => _Step7State();
}

class _Step7State extends State<Step7> {
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
            const CustomAppBarTop("7"),
            const Spacer(),
            InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'step_8_screen');
                },
                child: const CustomButton("Continue")
            ),
          ],
        ),
      ),
    );
  }
}



