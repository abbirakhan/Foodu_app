import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SiginPage extends StatelessWidget {
  const SiginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
          left: -130.w,
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
    
        ],
        
      ),
      
    );
  }
}
