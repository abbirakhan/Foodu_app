import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/Homes_page.dart';
import 'package:foodu_app/pages/home_page.dart';

import 'package:foodu_app/pages/test_page.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            bottom: 170.h,
            child: SizedBox(
              width: ScreenUtil().screenWidth,
              height: ScreenUtil().screenHeight,
              child: Image.asset(
                'assets/images/thanku.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
              top: 430.h,
              child: Column(
                children: [
                  Container(
                      height: 420.h,
                      width: 395.w,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50)),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 15.h),
                          Image.asset(
                            'assets/images/clear.png',
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "Your order has been successfully",
                            style: TextStyle(
                                color: Color(0xff406A52),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "processed",
                            style: TextStyle(
                                color: Color(0xff406A52),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 15.h),
                          Text(
                            "You will receive an SMS confirmation of",
                            style: TextStyle(
                                color: Color(0xff406A52),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "your order shortly.",
                            style: TextStyle(
                                color: Color(0xff406A52),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(height: 40.h),
                          SizedBox(
                            height: 55.h,
                            width: 297.w,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor: Color(0xff406A52),
                                    elevation: 4,
                                    shadowColor: Colors.grey),
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (_) => HomePage()));
                                },
                                child: Text(
                                  "To Main Menu",
                                  style: TextStyle(
                                    color: const Color(0xffA6A6A6),
                                    fontSize: 16.sp,
                                    fontStyle: FontStyle.normal,
                                    //   fontWeight: FontWeight.w900
                                  ),
                                )),
                          )
                        ],
                      )),
                ],
              ))
        ],
      ),
    );
  }
}
