import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/delivery_page.dart';
import 'package:foodu_app/pages/home_page.dart';
import 'package:foodu_app/pages/test_page.dart';

class CartBucket extends StatefulWidget {
  const CartBucket({super.key});

  @override
  State<CartBucket> createState() => _CartBucketState();
}

class _CartBucketState extends State<CartBucket> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (_) => const HomePage()));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: const Color(0xff3F654F),
                      size: 30.sp,
                    )),
                SizedBox(width: 80.w),
                Text(
                  "    Cart",
                  style: TextStyle(
                      color: const Color(0xff3F654F),
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 105.w),
                Icon(
                  (Icons.shopping_bag_rounded),
                  color: const Color(0xff3F654F),
                  size: 35.h,
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Container(
                height: 90.h,
                width: 320.w,
                decoration: BoxDecoration(
                    color: const Color(0xffEDEDED),
                    borderRadius: BorderRadius.circular(20.r)),
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        'assets/images/f.png',
                      ),
                    ),
                    Positioned(
                      top: 25.h,
                      right: 70.w,
                      child: Text(
                        "Veggie tomamato mix",
                        style: TextStyle(
                            color: const Color(0xff406A52),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        top: 50.h,
                        right: 170.w,
                        child: Row(
                          children: [
                            const Icon(Icons.attach_money),
                            SizedBox(width: 5.w),
                            Text(
                              "1900",
                              style: TextStyle(
                                  color: const Color(0xff406A52),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    Positioned(
                        top: 50.h,
                        right: 30.w,
                        child: Container(
                          height: 25.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                              color: const Color(0xff3F654F),
                              borderRadius: BorderRadius.circular(20.r)),
                        )),
                    Positioned(
                        top: 37.h,
                        right: 30.w,
                        child: IconButton(
                          onPressed: _incrementCounter,
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                          iconSize: 15,
                        )),
                    Positioned(
                        top: 33.h,
                        right: 70.w,
                        child: IconButton(
                          onPressed: _decrementCounter,
                          icon: Icon(Icons.minimize_outlined),
                          color: Colors.white,
                          iconSize: 15,
                        )),
                    Positioned(
                      top: 50.h,
                      right: 65.w,
                      child: Text('$_counter',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                    ),
                  ],
                )),
            SizedBox(height: 30.h),
            Container(
                height: 90.h,
                width: 320.w,
                decoration: BoxDecoration(
                    color: const Color(0xffEDEDED),
                    borderRadius: BorderRadius.circular(20.r)),
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        'assets/images/ood.png',
                      ),
                    ),
                    Positioned(
                      top: 25.h,
                      right: 70.w,
                      child: Text(
                        "Fish with mix orange",
                        style: TextStyle(
                            color: Color(0xff406A52),
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        top: 50.h,
                        right: 170.w,
                        child: Row(
                          children: [
                            Icon(Icons.attach_money),
                            SizedBox(width: 5.w),
                            Text(
                              "1900",
                              style: TextStyle(
                                  color: Color(0xff406A52),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    Positioned(
                        top: 50.h,
                        right: 30.w,
                        child: Container(
                          height: 25.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                              color: const Color(0xff3F654F),
                              borderRadius: BorderRadius.circular(20.r)),
                        )),
                    Positioned(
                        top: 37.h,
                        right: 30.w,
                        child: IconButton(
                          onPressed: _incrementCounter,
                          icon: Icon(Icons.add),
                          color: Colors.white,
                          iconSize: 15,
                        )),
                    Positioned(
                        top: 33.h,
                        right: 70.w,
                        child: IconButton(
                          onPressed: _decrementCounter,
                          icon: Icon(Icons.minimize_outlined),
                          color: Colors.white,
                          iconSize: 15,
                        )),
                    Positioned(
                      top: 50.h,
                      right: 65.w,
                      child: Text('$_counter',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          )),
                    ),
                  ],
                )),
            SizedBox(height: 320.h),
            Row(
              children: [
                SizedBox(width: 50.w),
                Text(
                  "Total",
                  style: TextStyle(
                    color: Color(0xff406A52),
                    fontSize: 20.sp,
                    //fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(width: 150.w),
                Text(
                  "23,000",
                  style: TextStyle(
                      color: Color(0xff406A52),
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            SizedBox(
              height: 55.h,
              width: 350.w,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: const Color(0xff406A52),
                      elevation: 4,
                      shadowColor: Colors.grey),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DeliveryPage()));
                  },
                  child: Text(
                    "Complete order",
                    style: TextStyle(
                        color: const Color(0xffECECEC),
                        fontSize: 18.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
