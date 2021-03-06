import 'package:flutter/material.dart';
import 'package:flutter_front/screens/widgets/constants.dart';
import 'package:flutter_front/screens/widgets/custom_drawer.dart';
import 'package:flutter_front/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EventDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'Event', fontSize: 26.0, color: mainColor),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 14.w),
            child: Icon(Icons.notifications_outlined, color: mainColor, size: 30),
          )
        ],
        iconTheme: IconThemeData(color: mainColor),
      ),
      drawer: customDrawer(),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/event_1.jpg', height: 250.h, width: MediaQuery.of(context).size.width, fit: BoxFit.cover,),
              Positioned(
                top: 20.0,
                left: 15.0,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 24.sp),
                ),
              ),
            ]
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: 'New collection', fontSize: 18.sp),
                Row(
                  children: [
                    Icon(Icons.calendar_today_outlined, color: mainColor, size: 22.sp),
                    SizedBox(width: 12.w),
                    CustomText(text: '29 June', color: mainColor, fontSize: 17.sp)
                  ],
                ),
              ]
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: CustomText(text: 'Spring - summer 2021', color: textColor, fontSize: 17.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: CustomText(text: 'Description', fontSize: 17.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: CustomText(text: 'Event Detail Description', color: textColor, fontSize: 17.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: CustomText(text: 'Store Available', fontSize: 17.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: CustomText(text: 'Store 1', color: textColor, fontSize: 17.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: CustomText(text: 'Store 2', color: textColor, fontSize: 17.sp),
          ),
          Padding(
            padding: EdgeInsets.only(left: 26.w, right: 26.w, top: 22.h),
            child: CustomText(text: 'Store 3', color: textColor, fontSize: 17.sp),
          ),
        ],
      ),
    );
  }
}