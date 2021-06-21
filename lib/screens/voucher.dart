import 'package:flutter/material.dart';
import 'package:flutter_front/screens/widgets/constants.dart';
import 'package:flutter_front/screens/widgets/custom_drawer.dart';
import 'package:flutter_front/screens/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Voucher extends StatefulWidget {

  @override
  _VoucherState createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() { 
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var voucher = ['used', 'used', 'expired', 'expired', 'expired', 'expired', 'expired', 'expired', 'expired', 'expired'];
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'Voucher', fontSize: 26.0, color: mainColor, fontWeight: FontWeight.bold,),
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
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 18.h),
            child: TabBar(
              controller: _tabController,
              indicatorColor: mainColor,
              // indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 4.h,
              labelColor: mainColor,
              isScrollable: true,
              unselectedLabelColor: mainColor,
              tabs: [
                Tab(
                  child: CustomText(text: 'Your Voucher', color: mainColor)
                ),
                Tab(
                  child: CustomText(text: 'Available Voucher', color: mainColor)
                ),
                Tab(
                  child: CustomText(text: 'Used Voucher', color: mainColor)
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 50.0,
            width: double.infinity,
            child: TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 24.h),
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 18.h, left: 18.w,),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 22,
                              height: 90.0,
                              decoration: new BoxDecoration(
                                gradient: new LinearGradient(
                                  colors: [Colors.white, Color(0xFFc8fff4)],
                                  stops: [0.3, 1.0],
                                  begin: FractionalOffset.bottomLeft,
                                  end: FractionalOffset.topRight,
                                  tileMode: TileMode.repeated
                                ),
                                // borderRadius: BorderRadius.circular(10.0),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/logo.png'),
                                  SizedBox(width: 10.w),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(text: 'Voucher Name', fontSize: 19),
                                      SizedBox(height: 6.h),
                                      CustomText(text: 'Aug 17-23', color: mainColor, fontSize: 15.sp),
                                    ],
                                  )
                                ]
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 22,
                              height: 90.0,
                              decoration: new BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage('assets/images/use_now.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(child: CustomText(text: 'USE NOW', color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.bold)),
                            ),
                          ]
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.h),
                  child: ListView.builder(
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 18.h, left: 18.w,),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 22,
                              height: 90.0,
                              decoration: new BoxDecoration(
                                gradient: new LinearGradient(
                                  colors: [Colors.white, Color(0xFFc8fff4)],
                                  stops: [0.3, 1.0],
                                  begin: FractionalOffset.bottomLeft,
                                  end: FractionalOffset.topRight,
                                  tileMode: TileMode.repeated
                                ),
                                // borderRadius: BorderRadius.circular(10.0),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/logo.png'),
                                  SizedBox(width: 10.w),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(text: 'Voucher Name', fontSize: 19),
                                      SizedBox(height: 6.h),
                                      CustomText(text: 'Aug 17-23', color: mainColor, fontSize: 15.sp),
                                    ],
                                  )
                                ]
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 22,
                              height: 90.0,
                              decoration: new BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage('assets/images/Subtract.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(text: '15%', color: Colors.white, fontSize: 20),
                                  SizedBox(width: 10.w),
                                  CustomText(text: 'Reward', color: Colors.white, fontSize: 20),
                                ]
                              ),
                            ),
                          ]
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24.h),
                  child: ListView.builder(
                    itemCount: voucher.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 18.h, left: 18.w,),
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 22,
                              height: 90.0,
                              decoration: new BoxDecoration(
                                gradient: new LinearGradient(
                                  colors: [Colors.white, Color(0xFFc8fff4)],
                                  stops: [0.3, 1.0],
                                  begin: FractionalOffset.bottomLeft,
                                  end: FractionalOffset.topRight,
                                  tileMode: TileMode.repeated
                                ),
                                // borderRadius: BorderRadius.circular(10.0),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/logo.png'),
                                  SizedBox(width: 10.w),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(text: 'Voucher Name', fontSize: 19),
                                      SizedBox(height: 6.h),
                                      CustomText(text: 'Aug 17-23', color: mainColor, fontSize: 15.sp),
                                    ],
                                  )
                                ]
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2 - 22,
                              height: 90.0,
                              decoration: new BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage(voucher[index] == 'used' ? 'assets/images/use_now.png' : 'assets/images/expired.png'),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: CustomText(text: voucher[index] == 'used' ? 'USED' : 'EXPIRED', color: Colors.white, fontSize: 20)
                              ),
                            ),
                          ]
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}