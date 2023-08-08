import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:foodu_app/pages/sigin_page.dart';
import 'package:foodu_app/pages/verification_page.dart';

class ForgetPage extends StatelessWidget {
  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        child: Stack(
          children: [
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
                                    builder: (_) => const SigninPage()));
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: const Color(0xff3F654F),
                            size: 30.sp,
                          )),
                      SizedBox(height: 20.h),
                      Text(
                        "    Forgot Password",
                        style: TextStyle(
                            color: const Color(0xff3F654F),
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50.h),
                      Image.asset(
                        'assets/images/secure.png',
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        "  Enter Your Email Address ",
                        style: TextStyle(
                            color: const Color(0xff406A52),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 280.h,
                          width: 330.w,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Color(0xff406A52),
                              ),
                              contentPadding: EdgeInsets.all(20.h),
                              fillColor: const Color(0xffECECEC),
                              filled: true,
                              hintText: "example123@gmail.com",
                              hintStyle: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xffA6A6A6),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22.r),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(22.r)),
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Positioned(
                left: 25.w,
                top: 590.h,
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
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const VerifyPage()));
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
          ],
        ),
      ),
    ));
  }
}
