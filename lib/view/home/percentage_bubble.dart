import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colours.dart';

class PercentageBubble extends StatelessWidget {
  const PercentageBubble({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, "type_selection_screen");
        },
        child: Icon(Icons.adjust_rounded, color: AppColor.primaryColor, size: 65.w,));
  }
}
