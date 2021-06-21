import 'package:flutter/material.dart';
import 'package:flutter_front/screens/store_details.dart';
import 'package:flutter_front/screens/widgets/constants.dart';
import 'package:flutter_front/screens/widgets/custom_drawer.dart';
import 'package:flutter_front/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Store extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'Store', fontSize: 26.0, color: mainColor, fontWeight: FontWeight.bold,),
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
        padding: EdgeInsets.only(top: 14.h, right: 26.sp, left: 25.sp),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (BuildContext context, int item) {
            return Padding(
              padding: EdgeInsets.only(bottom: 14.w),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  gradient: new LinearGradient(
                    colors: [Colors.white, Color(0xFFc8fff4)],
                    stops: [0.5, 1.0],
                    begin: FractionalOffset.bottomLeft,
                    end: FractionalOffset.topRight,
                    tileMode: TileMode.repeated
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
                ),
                child: Padding(
                  padding: EdgeInsets.only(right: 22.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/logo2.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(text: 'Store Name', fontSize: 18.sp, fontWeight: FontWeight.bold),
                          SizedBox(height: 10.h),
                          CustomText(text: 'Address', color: mainColor, fontSize: 17.sp),
                        ]
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(''), Text(''),
                            SizedBox(height: 10.h),
                            InkWell(
                              onTap: () {
                                Get.to(StoreDetails());
                              },
                              child: Container(
                                padding: EdgeInsets.all(4.h),
                                decoration: BoxDecoration(
                                  border: Border.all(color: mainColor)
                                ),
                                child: Row(
                                  children: [
                                    CustomText(text: 'View', color: mainColor, fontSize: 15.sp),
                                    SizedBox(width: 2.w),
                                    Icon(Icons.arrow_forward_ios, size: 14.sp, color: mainColor)
                                  ],
                                )
                              ),
                            ),
                          ]
                        ),
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