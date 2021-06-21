import 'package:flutter/material.dart';
import 'package:flutter_front/screens/event_details.dart';
import 'package:flutter_front/screens/widgets/constants.dart';
import 'package:flutter_front/screens/widgets/custom_drawer.dart';
import 'package:flutter_front/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Events extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'Events', fontSize: 26.0, color: mainColor),
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
      body: Padding(
        padding: EdgeInsets.only(top: 14.h),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () => Get.to(EventDetails()),
              child: Padding(
                padding: EdgeInsets.only(left: 22.w, right: 22.w, bottom: 18.h),
                child: Container(
                  padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 18.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.asset('assets/images/event_1.jpg'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(text: 'Event Name', fontSize: 20.sp, fontWeight: FontWeight.bold),
                            Row(
                              children: [
                                // Image.asset('assets/images/calendar.png'),
                                Icon(Icons.calendar_today_outlined, size: 20, color: mainColor),
                                SizedBox(width: 4.w),
                                CustomText(text: '29 June', fontSize: 17.sp, color: mainColor),
                              ]
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: CustomText(text: 'New collection', color: mainColor, fontSize: 19.sp),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.h, bottom: 16.h),
                        child: CustomText(text: 'Spring - summer 2021', fontSize: 18.sp),
                      ),
                    ]
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}