import 'package:flutter/material.dart';
import 'package:flutter_front/screens/auth/login.dart';
import 'package:flutter_front/screens/welcome.dart';
import 'package:flutter_front/screens/widgets/scrollBehavior.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Replace the 3 second delay with your initialization code:
      future: Future.delayed(Duration(seconds: 3)),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return ScreenUtilInit(
            designSize: Size(360, 690),
              builder: () => GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter_ScreenUtil',
                builder: (context, child) {
                  return MediaQuery(
                    //Setting font does not change with system font size
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: child,
                    ),
                  );
                },
                home: Welcome(),
              ),
          );
        } else {
          // Loading is done, return the app:
          return ScreenUtilInit(
            designSize: Size(360, 690),
              builder: () => GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Flutter_ScreenUtil',
                builder: (context, child) {
                  return MediaQuery(
                    //Setting font does not change with system font size
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: ScrollConfiguration(
                      behavior: MyBehavior(),
                      child: child,
                    ),
                  );
                },
                home: Login(),
              ),
          );
        }
      },
    );
  }
}