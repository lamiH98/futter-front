import 'package:flutter/material.dart';
import 'package:flutter_front/screens/auth/forgot_password.dart';
import 'package:flutter_front/screens/auth/login.dart';
import 'package:flutter_front/screens/widgets/constants.dart';
import 'package:flutter_front/screens/widgets/custom_text.dart';
import 'package:flutter_front/screens/widgets/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget{
  
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  GlobalKey<FormState> _login = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _nricController = TextEditingController();
  TextEditingController _memberController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  register() {
    var formData = _login.currentState;
    if(formData.validate()) {
      print('true');
      formData.save();
    }
  }

  @override
  void initState() {
    _passwordVisible = false;
    _confirmPasswordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setHeight(20)),
        child: Form(
          key: _login,
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(60)),
                child: Center(child: CustomText(text: 'Create An Account', color: mainColor, fontSize: 32.sp, fontWeight: FontWeight.bold,)),
              ),
              SizedBox(height: 35.h),
              CustomText(text: 'NAME', color: textColor),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(8), bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField('Enter your name', false, _nameController, 'name'),
              ),
              CustomText(text: 'SURNAME', color: textColor),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(8), bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField('Enter your surname', false, _surController, 'surname'),
              ),
              CustomText(text: 'EMAIL', color: textColor),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(8), bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField('Enter your email', false, _emailController, 'email'),
              ),
              CustomText(text: 'PHONE NUMBER', color: textColor),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(8), bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField('Enter your phone number', false, _phoneController, 'phone'),
              ),
              CustomText(text: 'NRIC NUMBER', color: textColor),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(8), bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField('Enter your nric number', false, _nricController, 'nric'),
              ),
              CustomText(text: 'MEMBER NUMBER', color: textColor),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(8), bottom: ScreenUtil().setHeight(8)),
                child: buildTextFormField('Enter your member number', false, _memberController, 'member'),
              ),
              CustomText(text: 'PASSWORD', color: textColor),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(8), bottom: ScreenUtil().setHeight(16)),
                child: TextFormField(
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
              ),
              CustomText(text: 'CONFIRM PASSWORD', color: textColor),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(8), bottom: ScreenUtil().setHeight(8)),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  controller: _confirmPasswordController,
                  obscureText: !_confirmPasswordVisible,
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
                        _confirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                        color: mainColor,
                        ),
                      onPressed: () {
                        setState(() {
                            _confirmPasswordVisible = !_confirmPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Get.to(ForgotPassword());
                  },
                  child: CustomText(text: 'Forgot password', color: textColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: ScreenUtil().setHeight(14), bottom: ScreenUtil().setHeight(14)),
                child: ElevatedButton(
                  child: CustomText(text: 'LOG IN', color: Color(0xFFAFAFAF),),
                  onPressed: register,
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
              TextButton(
                onPressed: () {
                  Get.to(Login());
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(16)),
                  child: Center(child: CustomText(text: 'ALREADY HAVE AN ACCOUNT', color: mainColor, decoration: TextDecoration.underline)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}