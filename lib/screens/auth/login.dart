import 'package:flutter/material.dart';
import 'package:flutter_front/screens/auth/forgot_password.dart';
import 'package:flutter_front/screens/auth/register.dart';
import 'package:flutter_front/screens/events.dart';
import 'package:flutter_front/screens/home.dart';
import 'package:flutter_front/screens/membershipTransactions.dart';
import 'package:flutter_front/screens/notification_2.dart';
import 'package:flutter_front/screens/notifications.dart';
import 'package:flutter_front/screens/privacy_policy.dart';
import 'package:flutter_front/screens/store.dart';
import 'package:flutter_front/screens/terms_conditions.dart';
import 'package:flutter_front/screens/transactions.dart';
import 'package:flutter_front/screens/voucher.dart';
import 'package:flutter_front/screens/voucher_details.dart';
import 'package:flutter_front/screens/widgets/constants.dart';
import 'package:flutter_front/screens/widgets/custom_text.dart';
import 'package:flutter_front/screens/widgets/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget{
  
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  GlobalKey<FormState> _login = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _passwordVisible = false;

  bool get isPopulated => _emailController.text.isEmpty && _passwordController.text.isEmpty;

  login() {
    var formData = _login.currentState;
    if(formData.validate()) {
      print('true');
      Get.to(Transactions());
      formData.save();
    }
  }

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setHeight(20)),
        child: Form(
          key: _login,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(80)),
                child: Center(child: CustomText(text: 'Log In', color: mainColor, fontSize: 32.sp, fontWeight: FontWeight.bold,)),
              ),
              SizedBox(height: 35.h),
              CustomText(text: 'EMAIL', color: textColor),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(8), bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField('Enter your email', false, _emailController, 'email'),
              ),
              CustomText(text: 'PASSWORD', color: textColor),
              SizedBox(height: 8.h),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: _passwordController,
                obscureText: !_passwordVisible,
                validator: (value) {
                  if (value.trim().isEmpty) {
                    return "password can't to be empty";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(8.0),
                  hintText: 'Enter your password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.5), style: BorderStyle.solid)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey.withOpacity(0.5), style: BorderStyle.solid),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.red.withOpacity(0.5), style: BorderStyle.solid),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.red.withOpacity(0.5), style: BorderStyle.solid),
                  ),
                  // Here is key idea
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                      color: mainColor,
                      ),
                    onPressed: () {
                      setState(() {
                          _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Get.to(ForgotPassword());
                },
                child: CustomText(text: 'Forgot password', color: textColor),
              ),
              isPopulated ? Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: ScreenUtil().setHeight(14), bottom: ScreenUtil().setHeight(14)),
                    child: ElevatedButton(
                      child: CustomText(text: 'LOG IN', color: Color(0xFFAFAFAF),),
                      onPressed: login,
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFE5E5E5),
                        elevation: 0,
                        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 125.w),
                        textStyle: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ) : CustomText(text: 'Shit'),
              TextButton(
                onPressed: () {
                  Get.to(Register());
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(16)),
                  child: Center(child: CustomText(text: 'CREATE AN ACCOUNT', color: mainColor, decoration: TextDecoration.underline)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}