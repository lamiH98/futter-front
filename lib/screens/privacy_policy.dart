import 'package:flutter/material.dart';
import 'package:flutter_front/screens/widgets/constants.dart';
import 'package:flutter_front/screens/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicy extends StatelessWidget{

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
                CustomText(text: 'Privacy policy', color: mainColor, fontWeight: FontWeight.bold, fontSize: 21.sp),
                Text(''),
              ]
            ),
            Padding(
              padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
              child: CustomText(text: 'Copyright 2021 app', fontSize: 16.sp),
            ),
            Padding(
              padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
              child: CustomText(text: 'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ', fontSize: 16.sp, color: textColor),
            ),
            Padding(
              padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
              child: CustomText(text: 'Copyright 2021 app', fontSize: 16.sp),
            ),
            Padding(
              padding: EdgeInsets.only(right: 22.w, left: 22.w, top: 18.h),
              child: CustomText(text: 'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet. ', fontSize: 16.sp, color: textColor),
            ),
          ]
        ),
      ),
    );
  }
}