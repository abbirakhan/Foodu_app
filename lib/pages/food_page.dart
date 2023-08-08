import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/sigin_page.dart';
import 'package:foodu_app/pages/sigup_page.dart';
//import 'package:foodu_app/pages/sigin_page.dart';
//import 'package:foodu_app/pages/sigup_page.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: Stack(
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
                top: 380.h,
                child: Text(
                  "Hello",
                  style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 32.sp,
                    fontStyle: FontStyle.normal,
                    //   fontWeight: FontWeight.w900
                  ),
                )),
            Positioned(
                right: 150.w,
                top: 430.h,
                child: Text(
                  "login to your account",
                  style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 10.sp,
                    fontStyle: FontStyle.normal,
                    //   fontWeight: FontWeight.w900
                  ),
                )),
            Positioned(
                right: 45.w,
                top: 460.h,
                child: SizedBox(
                  height: 55.h,
                  width: 297.w,
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
                        "Sign in",
                        style: TextStyle(
                          color: const Color(0xffECECEC),
                          fontSize: 16.sp,
                          fontStyle: FontStyle.normal,
                          //   fontWeight: FontWeight.w900
                        ),
                      )),
                )),
            Positioned(
                right: 45.w,
                top: 530.h,
                child: SizedBox(
                  height: 55.h,
                  width: 297.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: const Color(0xff406A52),
                          elevation: 4,
                          shadowColor: Colors.grey),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const SigupPage()));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: const Color(0xffECECEC),
                          fontSize: 16.sp,
                          fontStyle: FontStyle.normal,
                          //   fontWeight: FontWeight.w900
                        ),
                      )),
                )),
            Positioned(
                right: 130.w,
                top: 770.h,
                child: Text(
                  "Problems with account?",
                  style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 10.sp,
                    fontStyle: FontStyle.normal,
                    //   fontWeight: FontWeight.w900
                  ),
                )),
          ],
        ));
  }
}
