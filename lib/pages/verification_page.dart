import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/Homes_page.dart';
import 'package:foodu_app/pages/home_page.dart';

import 'package:foodu_app/pages/set_pass_page.dart';
import 'package:foodu_app/pages/test_page.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
                width: ScreenUtil().screenWidth,
                height: ScreenUtil().screenHeight,
                child: Stack(children: [
                  Positioned(
                    left: -90.w,
                    top: -50,
                    // right: -90.w,
                    child: Image.asset(
                      'assets/images/second.png',
                      height: 407.h,
                      width: 407.w,
                      //fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: -70,
                    right: -100.w,
                    child: Image.asset(
                      'assets/images/first.png',
                      height: 407.h,
                      width: 407.w,
                      //fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                      left: 15.w,
                      top: 40.h,
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (_) =>
                                                  const HomePage()));
                                    },
                                    icon: Icon(
                                      Icons.arrow_back_ios,
                                      color: const Color(0xff3F654F),
                                      size: 30.sp,
                                    )),
                                SizedBox(height: 20.h),
                                Text(
                                  "    OTP Verification",
                                  style: TextStyle(
                                      color: const Color(0xff3F654F),
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 50.h),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'assets/images/verify.png',
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Text(
                                  "We will send you one time password on this",
                                  style: TextStyle(
                                    color: Color(0xff406A52),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                Text(
                                  "email address.",
                                  style: TextStyle(
                                    color: Color(0xff406A52),
                                    fontSize: 15.sp,
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                Text(
                                  "                     ( example123@gmail.com )",
                                  style: TextStyle(
                                      color: Color(0xff406A52),
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20.h),
                                Row(
                                  children: [
                                    SizedBox(width: 40.w),
                                    SizedBox(
                                      height: 35,
                                      width: 40.w,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.all(15.h),
                                            fillColor: const Color(0xffECECEC),
                                            filled: true,
                                            hintStyle: TextStyle(
                                              fontSize: 15.sp,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xff5E5B5B),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r)),
                                            ),
                                            enabledBorder:
                                                const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xff5E5B5B),
                                                        width: 0)),
                                            focusedBorder:
                                                const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                              color: Color(0xff6DA9E4),
                                            ))),
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    SizedBox(
                                      height: 35,
                                      width: 40.w,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.all(15.h),
                                            fillColor: const Color(0xffECECEC),
                                            filled: true,
                                            hintStyle: TextStyle(
                                              fontSize: 15.sp,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xff5E5B5B),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r)),
                                            ),
                                            enabledBorder:
                                                const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xff5E5B5B),
                                                        width: 0)),
                                            focusedBorder:
                                                const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                              color: Color(0xff6DA9E4),
                                            ))),
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    SizedBox(
                                      height: 35,
                                      width: 40.w,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.all(15.h),
                                            fillColor: const Color(0xffECECEC),
                                            filled: true,
                                            hintStyle: TextStyle(
                                              fontSize: 15.sp,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xff5E5B5B),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r)),
                                            ),
                                            enabledBorder:
                                                const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xff5E5B5B),
                                                        width: 0)),
                                            focusedBorder:
                                                const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                              color: Color(0xff6DA9E4),
                                            ))),
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    SizedBox(
                                      height: 35,
                                      width: 40.w,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            contentPadding:
                                                EdgeInsets.all(15.h),
                                            fillColor: const Color(0xffECECEC),
                                            filled: true,
                                            hintStyle: TextStyle(
                                              fontSize: 15.sp,
                                              fontStyle: FontStyle.italic,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xff5E5B5B),
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.r)),
                                            ),
                                            enabledBorder:
                                                const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color:
                                                            Color(0xff5E5B5B),
                                                        width: 0)),
                                            focusedBorder:
                                                const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                              color: Color(0xff6DA9E4),
                                            ))),
                                      ),
                                    ),
                                  ],
                                ),
                              ]))),
                  Positioned(
                      left: 25.w,
                      top: 730.h,
                      child: SizedBox(
                        height: 55.h,
                        width: 350.w,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                backgroundColor: const Color(0xff406A52),
                                elevation: 4,
                                shadowColor: Colors.grey),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (_) => const ResetPassword()));
                            },
                            child: Text(
                              "Send OTP",
                              style: TextStyle(
                                  color: const Color(0xffECECEC),
                                  fontSize: 18.sp,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            )),
                      )),
                ]))));
  }
}
