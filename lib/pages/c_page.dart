import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/cart_bucket_page.dart';



class CPage extends StatelessWidget {
  const CPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Stack(
        children: [
          Positioned(
            right: -60.w,
            top: 700.h,
            child: Image.asset(
              'assets/images/2.png',
              height: 250.h,
              width: 340.w,
            ),
          ),
          Positioned(
            left: -150.w,
            top: 40.h,
            child: Image.asset(
              'assets/images/big.png',
              height: 250.h,
              width: 340.w,
            ),
          ),
          Positioned(
            right: -90.w,
            top: 380.h,
            child: Image.asset(
              'assets/images/big.png',
              height: 250.h,
              width: 340.w,
            ),
          ),
          Positioned(
            //left: 25.w,
            top: 10.h,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h),
                    Row(
                      children: [
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: const Color(0xffECECEC),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4.r,
                                offset: const Offset(2, 5),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: const Color(0xff406A52),
                              size: 37.h,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ),
                        SizedBox(width: 90.w),
                        Text(
                          "Detail",
                          style: TextStyle(
                              color: const Color(0xff406A52),
                              fontSize: 30.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 80.w),
                        Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            color: const Color(0xffECECEC),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4.r,
                                offset: Offset(2, 5.r), // Shadow position
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: IconButton(
                              icon: Icon(
                                Icons.favorite_border,
                                color: const Color(0xff406A52),
                                size: 36.h,
                              ),
                              onPressed: () {}),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    Container(
                      margin: EdgeInsets.all(5.r),
                      height: 250.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8.r,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/new.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                        height: 50.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: const Color(0xffECECEC),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4.r,
                              offset: Offset(2, 2.r),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(11.r),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10.w),
                            Text("4.5",
                                style: TextStyle(
                                    color: const Color(0xff406A52),
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 5.w,
                            ),
                            Image.asset(
                              'assets/images/star.png',
                              height: 44.h,
                              width: 44.w,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text("Complete Fresh",
                        style: TextStyle(
                            color: const Color(0xff406A52),
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold)),
                    Text("Vegetable",
                        style: TextStyle(
                            color: const Color(0xff406A52),
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.h),
                    Text(
                        "This simple Italian salad is the only side salad recipe you need.",
                        style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 12.sp,
                        )),
                    Text(
                        "It fits perfectly with any pasta dish and finds good company",
                        style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 12.sp,
                        )),
                    Text(
                        "alongside a whole roasted chicken or delicate fish dinner.",
                        style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 12.sp,
                        )),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        SizedBox(width: 100.w),
                        Text("30 min",
                            style: TextStyle(
                                color: const Color(0xffA6A6A6),
                                fontSize: 15.sp,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text("Delivery Time",
                            style: TextStyle(
                                color: const Color(0xff406A52),
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Icon(
                          Icons.timelapse,
                          color: Color(0xff406A52),
                        )
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        GestureDetector(
                          onTap:  () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (_) => const CartBucket()));
                      },
                          child: Container(
                              height: 70.h,
                              width: 180.w,
                              decoration: BoxDecoration(
                                color: const Color(0xffECECEC),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 4.r,
                                    offset: Offset(2, 2.r),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 5.w),
                                  const Icon(Icons.shopping_cart,
                                      color: Color(0xff406A52)),
                                  SizedBox(width: 5.w),
                                  Text("Add To Card",
                                      style: TextStyle(
                                          color: const Color(0xff406A52),
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.bold)),
                                ],
                              )),
                        ),
                        SizedBox(width: 30.w),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 70.h,
                            width: 115.w,
                            decoration: BoxDecoration(
                              color: const Color(0xffECECEC),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 4.r,
                                  offset: Offset(2, 2.r),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Column(
                                  children: [
                                    Text("Total Price",
                                        style: TextStyle(
                                          color: const Color(0xff406A52),
                                          fontSize: 20.sp,
                                          //fontWeight: FontWeight.bold
                                        )),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.attach_money_outlined,
                                          color: Color(0xff406A52),
                                        ),
                                        Text("33.33",
                                            style: TextStyle(
                                                color: const Color(0xff406A52),
                                                fontSize: 25.sp,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
