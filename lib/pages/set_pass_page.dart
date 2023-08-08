import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import 'package:foodu_app/pages/otp_page.dart';
import 'package:foodu_app/pages/sigin_page.dart';


// ignore: must_be_immutable
class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool passwordObsured = true;
  bool password = true;
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
                      // top: 10.h,
                      child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.h),
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const ForgetPage()));
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios,
                                    color: const Color(0xff3F654F),
                                    size: 30.sp,
                                  )),
                              SizedBox(height: 20.h),
                              Text(
                                "    Set new Password",
                                style: TextStyle(
                                    color: const Color(0xff3F654F),
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 40.h),
                              Row(
                                children: [
                                  SizedBox(width: 35.w),
                                  Image.asset(
                                    'assets/images/lock.png',
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "     Confirm new passord ",
                                style: TextStyle(
                                    color: const Color(0xff406A52),
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5.h),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 280.h,
                                  width: 330.w,
                                  child: TextField(
                                    obscureText: passwordObsured,
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.lock,
                                        color: Color(0xff406A52),
                                      ),
                                      suffixIcon: IconButton(
                                          color: Color(0xff406A52),
                                          onPressed: () {
                                            setState(() {
                                              passwordObsured =
                                                  !passwordObsured;
                                            });
                                          },
                                          icon: Icon(passwordObsured
                                              ? Icons.visibility_off
                                              : Icons.visibility)),
                                      contentPadding: EdgeInsets.all(20.h),
                                      fillColor: const Color(0xffECECEC),
                                      filled: true,
                                      hintText: "*********",
                                      hintStyle: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.normal,
                                        color: const Color(0xffA6A6A6),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(22.r),
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(22.r)),
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ))),
                  Positioned(
                    left: 15.w,
                    top: 590.h,
                    child: Text(
                      "        Set new passord ",
                      style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    left: 15.w,
                    top: 600.h,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        height: 280.h,
                        width: 330.w,
                        child: TextField(
                          obscureText: password,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Color(0xff406A52),
                            ),
                            suffixIcon: IconButton(
                                color: Color(0xff406A52),
                                onPressed: () {
                                  setState(() {
                                    password = !password;
                                  });
                                },
                                icon: Icon(password
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            contentPadding: EdgeInsets.all(20.h),
                            fillColor: const Color(0xffECECEC),
                            filled: true,
                            hintText: "*********",
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
                  ),
                  Positioned(
                      left: 25.w,
                      top: 750.h,
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
                              showModalBottomSheet(
                                  context: context,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(30.r))),
                                  builder: (context) => Container(
                                    height: 400.h,
                                    child: Column(
                                      children: [
                                         SizedBox(height: 25.h),
                                  Image.asset(
                                    'assets/images/tump.png',
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                      " Password Recovery ",
                      style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize:26.sp,
                          fontWeight: FontWeight.bold),
                    ),Text(
                      "Sucessful ",
                      style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 26.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.h),Text(
                      "Return to the login screen to enter the ",
                      style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal),
                    ),Text(
                      "application ",
                      style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal),
                    ),
                       SizedBox(height: 20.h),
                    SizedBox(
                  height: 40.h,
                  width: 200.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: const Color(0xff406A52),
                          elevation: 4,
                          shadowColor: Colors.grey),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const SigninPage()));
                      },
                      child: Text(
                        "Return to login",
                        style: TextStyle(
                            color: const Color(0xffECECEC),
                            fontSize: 18.sp,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      )),
                )
                                      ],
                                    ),
                                  ));
                            },
                            child: Text(
                              "Reset Password",
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
