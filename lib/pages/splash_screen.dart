import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:foodu_app/pages/food_page.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const FoodPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(height: 150.h),
          Lottie.asset(
            'assets/svgs/delivery.json',
            repeat: false,
            height: 400.h,
            width: 400.w,
          ),
          Text(
            "    Welcome to Foodapio",
            style: TextStyle(
              color: const Color(0xff406A52),
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30.h),
          const SpinKitFadingCircle(
            color: Color(0xff406A52),
            size: 50.0,
          )
        ],
      ),
    ));
  }
}
