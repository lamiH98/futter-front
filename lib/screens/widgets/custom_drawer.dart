import 'package:flutter/material.dart';
import 'package:flutter_front/screens/widgets/constants.dart';
import 'package:flutter_front/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

customDrawer() {
  return Drawer(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 55.w, bottom: 26.h),
          child: Row(
            children: [
              Image.asset('assets/images/logo.png', width: 40.w),
              SizedBox(width: 12.w),
              CustomText(text: 'Hello, Guest!', fontSize: 18.sp, fontWeight: FontWeight.bold,),
            ]
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Container(
            height: 60.0,
            padding: EdgeInsets.only(left: 22.w),
            decoration: BoxDecoration(
              color: mainColor.withOpacity(0.2),
              border: Border(
                left: BorderSide(color: mainColor, width: 7.w)
              ),
            ),
            child: Row(
              children: [
                Icon(Icons.person, color: mainColor, size: 38),
                SizedBox(width: 5.w),
                CustomText(text: 'View profile', color: mainColor, fontSize: 19),
              ]
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Container(
            height: 60.0,
            padding: EdgeInsets.only(left: 22.w),
            // decoration: BoxDecoration(
            //   color: mainColor.withOpacity(0.2),
            //   border: Border(
            //     left: BorderSide(color: mainColor, width: 7.w)
            //   ),
            // ),
            child: Row(
              children: [
                Icon(Icons.settings, color: mainColor, size: 36),
                SizedBox(width: 5.w),
                CustomText(text: 'Change password', color: mainColor, fontSize: 19),
              ]
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: Container(
            height: 60.0,
            padding: EdgeInsets.only(left: 22.w),
            // decoration: BoxDecoration(
            //   color: mainColor.withOpacity(0.2),
            //   border: Border(
            //     left: BorderSide(color: mainColor, width: 7.w)
            //   ),
            // ),
            child: Row(
              children: [
                // Icon(Icons.person_pin, color: mainColor, size: 38),
                Image.asset('assets/images/people.png'),
                SizedBox(width: 5.w),
                CustomText(text: 'Tell a friend', color: mainColor, fontSize: 19),
              ]
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 16.h, top: 45.h, left: 22.w),
          child: CustomText(text: 'Terms & conditions', color: mainColor, fontSize: 20),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 12.h, left: 22.h),
          child: CustomText(text: 'Privacy policy', color: mainColor, fontSize: 20),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 22.w, bottom: 14.h),
              child: Row(
                children: [
                  Icon(Icons.exit_to_app, color: mainColor),
                  SizedBox(width: 8.w),
                  CustomText(text: 'Log out', color: mainColor, fontSize: 22, fontWeight: FontWeight.bold),
                ],
              )
            ),
          ),
        ),
      ],
    ),
  );
}