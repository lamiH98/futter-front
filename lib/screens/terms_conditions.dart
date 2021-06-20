import 'package:flutter/material.dart';
import 'package:flutter_front/screens/widgets/constants.dart';
import 'package:flutter_front/screens/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsConditions extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 12.h),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(Icons.arrow_back),
                ),
                CustomText(text: 'Terms & Conditions', color: mainColor, fontWeight: FontWeight.bold, fontSize: 21.sp),
                Text(''),
              ]
            ),
            Padding(
              padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
              child: CustomText(text: 'Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ', fontSize: 16.sp, color: textColor),
            ),
            Padding(
              padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
              child: CustomText(text: 'Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ', fontSize: 16.sp, color: textColor),
            ),
            Padding(
              padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
              child: CustomText(text: 'Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ', fontSize: 16.sp, color: textColor),
            ),
            Padding(
              padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
              child: CustomText(text: 'Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet.Lorem ips ipsum dolor ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ', fontSize: 16.sp, color: textColor),
            ),
          ]
        ),
      ),
    );
  }
}