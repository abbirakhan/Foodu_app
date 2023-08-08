import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/Homes_page.dart';
import 'package:foodu_app/pages/home_page.dart';

import 'package:foodu_app/pages/otp_page.dart';
import 'package:foodu_app/pages/sigup_page.dart';
import 'package:foodu_app/pages/test_page.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  var passwordcontroller = TextEditingController();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: SingleChildScrollView(
          child: SizedBox(
            width: ScreenUtil().screenWidth,
            height: ScreenUtil().screenHeight,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/images/tri.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Positioned(
                  left: 5.w,
                  top: 35.h,
                  child: Image.asset(
                    'assets/images/cir.png',
                    height: 195.h,
                    width: 318.w,
                  ),
                ),
                Positioned(
                  // left: 20.w,
                  right: 0.w,
                  top: 140.h,
                  child: Image.asset(
                    'assets/images/a.png',
                    height: 44.h,
                    width: 44.w,
                  ),
                ),
                Positioned(
                  // left: 20.w,
                  right: 65.w,
                  top: 210.h,
                  child: Image.asset(
                    'assets/images/c.png',
                    height: 55.h,
                    width: 44.w,
                  ),
                ),
                Positioned(
                  // left: 20.w,
                  right: 100.w,
                  top: 270.h,
                  child: Image.asset(
                    'assets/images/e.png',
                    height: 44.h,
                    width: 44.w,
                  ),
                ),
                Positioned(
                  // left: 20.w,
                  right: 10.w,
                  top: 270.h,
                  child: Image.asset(
                    'assets/images/b.png',
                    height: 44.h,
                    width: 44.w,
                  ),
                ),
                Positioned(
                    right: 120.w,
                    top: 330.h,
                    child: Text(
                      "Foodapio",
                      style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 35.sp,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w900),
                    )),
                Positioned(
                    right: 160.w,
                    top: 370.h,
                    child: Text(
                      "Sigin",
                      style: TextStyle(
                        color: const Color(0xff406A52),
                        fontSize: 32.sp,
                        fontStyle: FontStyle.normal,
                        //   fontWeight: FontWeight.w900
                      ),
                    )),
                Positioned(
                    right: 120.w,
                    top: 415.h,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const SigupPage()));
                      },
                      child: Text(
                        "Do not have an account?Sigup",
                        style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 12.sp,
                          fontStyle: FontStyle.normal,
                          //   fontWeight: FontWeight.w900
                        ),
                      ),
                    )),
                Positioned(
                  right: 60.w,
                  top: 450.h,
                  child: SizedBox(
                    height: 60.h,
                    width: 270.w,
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0.w,
                          heightFactor: 1.0.h,
                          child: const Icon(
                            Icons.email,
                            color: Color(0xff406A52),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(15.h),
                        fillColor: const Color(0xffECECEC),
                        filled: true,
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          // fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xffA6A6A6),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(34.r)),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(34.r)),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            )),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 60.w,
                  top: 515.h,
                  child: SizedBox(
                    height: 60.h,
                    width: 270.w,
                    child: TextField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0.w,
                          heightFactor: 1.0.h,
                          child: const Icon(
                            Icons.password,
                            color: Color(0xff406A52),
                          ),
                        ),
                        contentPadding: EdgeInsets.all(15.h),
                        fillColor: const Color(0xffECECEC),
                        filled: true,
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          // fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal,
                          color: const Color(0xffA6A6A6),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(34.r)),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(34.r)),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            )),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 80.w,
                    top: 580.h,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const ForgetPage()));
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: const Color(0xffA6A6A6),
                          fontSize: 12.sp,
                          fontStyle: FontStyle.normal,
                          //   fontWeight: FontWeight.w900
                        ),
                      ),
                    )),
                Positioned(
                    right: 50.w,
                    top: 700.h,
                    child: SizedBox(
                      height: 55.h,
                      width: 297.w,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: Color(0xff406A52),
                              elevation: 4,
                              shadowColor: Colors.grey),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) => HomePage()));
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                              color: const Color(0xffA6A6A6),
                              fontSize: 16.sp,
                              fontStyle: FontStyle.normal,
                              //   fontWeight: FontWeight.w900
                            ),
                          )),
                    )),
              ],
            ),
          ),
        ));
  }
}
