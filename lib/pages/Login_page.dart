import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Stack(
          children: [
            Positioned(
              left: -112.w,
              top: -120.h,
              child: Image.asset('assets/images/tri.png',
                  height: 607.77.h, width: 619.46.w),
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
              right: 1.w,
              top: 130.h,
              child: Image.asset(
                'assets/images/a.png',
                height: 44.h,
                width: 44.w,
              ),
            ),
            Positioned(
              // left: 20.w,
              right: 65.w,
              top: 185.h,
              child: Image.asset(
                'assets/images/c.png',
                height: 55.h,
                width: 44.w,
              ),
            ),
            Positioned(
              // left: 20.w,
              right: 100.w,
              top: 240.h,
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
                right: 110.w,
                top: 300.h,
                child: Text(
                  "Foodapio",
                  style: TextStyle(
                      color: const Color(0xff406A52),
                      fontSize: 35.sp,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w900),
                )),
            Positioned(
                right: 140.w,
                top: 350.h,
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
                right: 110.w,
                top: 400.h,
                child: Text(
                  "Do not have an account?Sigup",
                  style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 12.sp,
                    fontStyle: FontStyle.normal,
                    //   fontWeight: FontWeight.w900
                  ),
                )),

            Positioned(
              right: 45.w,
              top: 450.h,
              child: SizedBox(
                height: 60.h,
                width: 270.w,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0.w,
                      heightFactor: 1.0.h,
                      child: const Icon(
                        Icons.person,
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
                        borderRadius: BorderRadius.all(Radius.circular(34.r)),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(34.r)),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
            ),

            Positioned(
              right: 45.w,
              top: 515.h,
              child: SizedBox(
                height: 60.h,
                width: 270.w,
                child: TextField(
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
                        borderRadius: BorderRadius.all(Radius.circular(34.r)),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(34.r)),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
            ),
            Positioned(
                right: 60.w,
                top: 580.h,
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                    color: const Color(0xffA6A6A6),
                    fontSize: 12.sp,
                    fontStyle: FontStyle.normal,
                    //   fontWeight: FontWeight.w900
                  ),
                )),

            Positioned(
                right: 30.w,
                top: 700.h,
                child: SizedBox(
                  height: 55.h,
                  width: 297.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xffECECEC),
                          elevation: 4,
                          shadowColor: Colors.grey),
                      onPressed: () {},
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 16.sp,
                          fontStyle: FontStyle.normal,
                          //   fontWeight: FontWeight.w900
                        ),
                      )),
                )),
                // Column(
                //   children: [
                //     Text("data"),
                //   ],
                // )

            //  Positioned(
            // right: 130.w,
            // top: 770.h,
            // child: Text(
            //   "Problems with account?",
            //   style: TextStyle(
            //     color: const Color(0xff406A52),
            //     fontSize: 10.sp,
            //     fontStyle: FontStyle.normal,
            //     //   fontWeight: FontWeight.w900
            //   ),
            // )),
          ],
        ));
  }
}
