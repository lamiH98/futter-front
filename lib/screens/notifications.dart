import 'package:flutter/material.dart';
import 'package:flutter_front/screens/widgets/constants.dart';
import 'package:flutter_front/screens/widgets/custom_drawer.dart';
import 'package:flutter_front/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notifications extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'Notofications', fontSize: 26.0, color: mainColor),
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
        padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 28.h),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 22.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/images/logo.png'),
                          Positioned(
                            top: 0.0,
                            child: Container(
                              width: 15.0,
                              height: 15.0,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Suprise!', fontSize: 19, fontWeight: FontWeight.bold),
                          SizedBox(height: 8.h),
                          CustomText(text: 'Cashback: 20 points')
                        ],
                      ),
                      CustomText(text: 'FRI', color: mainColor),
                    ]
                  ),
                  Divider(color: mainColor, height: 30),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 22.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Suprise!', fontSize: 19, fontWeight: FontWeight.bold),
                          SizedBox(height: 8.h),
                          CustomText(text: 'Cashback: 20 points')
                        ],
                      ),
                      CustomText(text: '15/07', color: mainColor),
                    ]
                  ),
                  Divider(color: mainColor, height: 30),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 22.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Suprise!', fontSize: 19, fontWeight: FontWeight.bold),
                          SizedBox(height: 8.h),
                          CustomText(text: 'Cashback: 20 points')
                        ],
                      ),
                      CustomText(text: '15/07', color: mainColor),
                    ]
                  ),
                  Divider(color: mainColor, height: 30),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 22.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Suprise!', fontSize: 19, fontWeight: FontWeight.bold),
                          SizedBox(height: 8.h),
                          CustomText(text: 'Cashback: 20 points')
                        ],
                      ),
                      CustomText(text: '15/07', color: mainColor),
                    ]
                  ),
                  Divider(color: mainColor, height: 30),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 22.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Suprise!', fontSize: 19, fontWeight: FontWeight.bold),
                          SizedBox(height: 8.h),
                          CustomText(text: 'Cashback: 20 points')
                        ],
                      ),
                      CustomText(text: '15/07', color: mainColor),
                    ]
                  ),
                  Divider(color: mainColor, height: 30),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 22.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Suprise!', fontSize: 19, fontWeight: FontWeight.bold),
                          SizedBox(height: 8.h),
                          CustomText(text: 'Cashback: 20 points')
                        ],
                      ),
                      CustomText(text: '15/07', color: mainColor),
                    ]
                  ),
                  Divider(color: mainColor, height: 30),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 22.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Suprise!', fontSize: 19, fontWeight: FontWeight.bold),
                          SizedBox(height: 8.h),
                          CustomText(text: 'Cashback: 20 points')
                        ],
                      ),
                      CustomText(text: '15/07', color: mainColor),
                    ]
                  ),
                  Divider(color: mainColor, height: 30),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 22.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/logo.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Suprise!', fontSize: 19, fontWeight: FontWeight.bold),
                          SizedBox(height: 8.h),
                          CustomText(text: 'Cashback: 20 points')
                        ],
                      ),
                      CustomText(text: '15/07', color: mainColor),
                    ]
                  ),
                  Divider(color: mainColor, height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}