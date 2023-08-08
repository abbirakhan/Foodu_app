import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:foodu_app/pages/cart_bucket_page.dart';

import 'package:foodu_app/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabConTroller;

  get floatingActionButtonLocation => null;
  @override
  void initState() {
    super.initState();
    _tabConTroller = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const HomeDrawer(),
        appBar: AppBar(
          backgroundColor: const Color(0xff406A52),
          actions: [
            SizedBox(
              //height: 5.h,
              width: 220.w,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(20.h),
                  hintText: "search your item",
                  hintStyle: TextStyle(
                    fontSize: 17.sp,
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
                      borderSide: const BorderSide(color: Colors.transparent)),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CartBucket()));
              },
              icon: const Icon(Icons.shopping_cart_checkout),
            ),
          ],
        ),
        body: SafeArea(
            child: Stack(children: [
          Positioned(
            left: -90.w,
            top: 150.h,
            child: Image.asset(
              'assets/images/or.png',
              height: 140.h,
              width: 140.w,
            ),
          ),
          Positioned(
            right: -60.w,
            top: 620.h,
            child: Image.asset(
              'assets/images/2.png',
              height: 250.h,
              width: 340.w,
            ),
          ),
          Positioned(
            right: 20.w,
            top: 460.h,
            child: Container(
              height: 140.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 20.w,
            top: 270.h,
            child: Container(
              height: 140.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 20.w,
            top: 650.h,
            child: Container(
              height: 140.h,
              width: 360.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            top: 275.h,
            child: Container(
              margin: EdgeInsets.all(5.r),
              height: 120.h,
              width: 110.w,
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
          ),
          Positioned(
            left: 20.w,
            top: 650.h,
            child: Container(
              margin: EdgeInsets.all(5.r),
              height: 120.h,
              width: 110.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.r,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/food.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            top: 460.h,
            child: Container(
              margin: EdgeInsets.all(5.r),
              height: 120.h,
              width: 110.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 8.r,
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/d.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
              right: 20.w,
              top: 275.h,
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
          Positioned(
              right: 20.w,
              top: 650.h,
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
          Positioned(
              right: 20.w,
              top: 460.h,
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
          Positioned(
            left: 140.w,
            top: 290.h,
            child: Text("Complet Fresh ",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            left: 140.w,
            top: 310.h,
            child: Text("vegetable",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            left: 140.w,
            top: 670.h,
            child: Text("Complet Fresh ",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            left: 140.w,
            top: 690.h,
            child: Text("vegetable",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            left: 140.w,
            top: 480.h,
            child: Text("Complet Fresh ",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            left: 140.w,
            top: 500.h,
            child: Text("vegetable",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            left: 50.w,
            top: 340.h,
            child: Row(
              children: [
                SizedBox(width: 90.w),
                const Icon(
                  Icons.timelapse,
                  color: Color(0xff406A52),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text("14-20 Minutes",
                    style: TextStyle(
                      color: const Color(0xff406A52),
                      fontSize: 20.sp,
                    ))
              ],
            ),
          ),
          Positioned(
            left: 50.w,
            top: 720.h,
            child: Row(
              children: [
                SizedBox(width: 90.w),
                const Icon(
                  Icons.timelapse,
                  color: Color(0xff406A52),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text("14-20 Minutes",
                    style: TextStyle(
                      color: const Color(0xff406A52),
                      fontSize: 20.sp,
                    ))
              ],
            ),
          ),
          Positioned(
            left: 50.w,
            top: 530.h,
            child: Row(
              children: [
                SizedBox(width: 90.w),
                const Icon(
                  Icons.timelapse,
                  color: Color(0xff406A52),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text("14-20 Minutes",
                    style: TextStyle(
                      color: const Color(0xff406A52),
                      fontSize: 20.sp,
                    ))
              ],
            ),
          ),
          Positioned(
              left: 140.w,
              top: 368.h,
              child: Row(
                children: [
                  const Icon(
                    Icons.attach_money_outlined,
                    color: Color(0xff406A52),
                  ),
                  Text("33.33",
                      style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 110.w,
                  ),
                  Container(
                    margin: EdgeInsets.all(2.r),
                    height: 35.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffECECEC),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.r,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => const CartBucket()));
                        },
                        icon: Icon(
                          Icons.add,
                          color: const Color(0xff406A52),
                        )),
                  ),
                ],
              )),
          Positioned(
              left: 140.w,
              top: 560.h,
              child: Row(
                children: [
                  const Icon(
                    Icons.attach_money_outlined,
                    color: Color(0xff406A52),
                  ),
                  Text("33.33",
                      style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 110.w,
                  ),
                  Container(
                    margin: EdgeInsets.all(2.r),
                    height: 35.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffECECEC),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.r,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => const CartBucket()));
                        },
                        icon: Icon(
                          Icons.add,
                          color: const Color(0xff406A52),
                        )),
                  ),
                ],
              )),
          Positioned(
              left: 140.w,
              top: 368.h,
              child: Row(
                children: [
                  const Icon(
                    Icons.attach_money_outlined,
                    color: Color(0xff406A52),
                  ),
                  Text("33.33",
                      style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 110.w,
                  ),
                  Container(
                    margin: EdgeInsets.all(2.r),
                    height: 35.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffECECEC),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.r,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => const CartBucket()));
                        },
                        icon: Icon(
                          Icons.add,
                          color: const Color(0xff406A52),
                        )),
                  ),
                ],
              )),
          Positioned(
              left: 140.w,
              top: 740.h,
              child: Row(
                children: [
                  const Icon(
                    Icons.attach_money_outlined,
                    color: Color(0xff406A52),
                  ),
                  Text("33.33",
                      style: TextStyle(
                          color: const Color(0xff406A52),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 110.w,
                  ),
                  Container(
                    margin: EdgeInsets.all(2.r),
                    height: 35.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffECECEC),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 8.r,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => const CartBucket()));
                        },
                        icon: Icon(
                          Icons.add,
                          color: const Color(0xff406A52),
                        )),
                  ),
                ],
              )),
          Positioned(
              top: 20.h,
              child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "DELICIOUS FOOD",
                          style: TextStyle(
                              color: const Color(0xff406A52),
                              fontSize: 35.sp,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "AT YOUR DOOR STEP ",
                          style: TextStyle(
                            color: const Color(0xffA6A6A6),
                            fontSize: 23.sp,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          "Categories ",
                          style: TextStyle(
                              color: const Color(0xff406A52),
                              fontSize: 23.sp,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 50.h,
                                  width: 100.w,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 0.0,
                                          ),
                                        ],
                                        color: const Color(0xff406A52),
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    height: 40,
                                    width: 90,
                                    child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.local_drink,
                                        )),
                                  )),
                              SizedBox(width: 14.w),
                              SizedBox(
                                  height: 50.h,
                                  width: 100.w,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        color: const Color(0xff406A52),
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    height: 40,
                                    width: 90,
                                    child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.local_pizza,
                                        )),
                                  )),
                              SizedBox(width: 14.w),
                              SizedBox(
                                  height: 50.h,
                                  width: 100.w,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.grey,
                                            offset: Offset(0.0, 1.0), //(x,y)
                                            blurRadius: 8.0,
                                          ),
                                        ],
                                        color: const Color(0xff406A52),
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    height: 40,
                                    width: 90,
                                    child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.cake,
                                        )),
                                  )),
                              SizedBox(width: 14.w),
                              SizedBox(
                                height: 50.h,
                                width: 100.w,
                                child: Container(
                                  decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset: Offset(0.4, 1.0), //(x,y)
                                          blurRadius: 8.0,
                                        ),
                                      ],
                                      color: const Color(0xff406A52),
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  height: 40,
                                  width: 90,
                                  child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.icecream,
                                      )),
                                ),
                              )
                            ],
                          ),
                        ),

                        // Padding(
                        //   padding: EdgeInsets.only(left: 25.r),
                        //   child: SingleChildScrollView(
                        //     scrollDirection: Axis.horizontal,
                        //     child: Row(
                        //       children: [
                        //         SizedBox(
                        //             height: 100.h,
                        //             width: 60.w,
                        //             child: Card(
                        //               color: Colors.white,
                        //               elevation: 5,
                        //               shape: RoundedRectangleBorder(
                        //                 borderRadius: BorderRadius.all(
                        //                   Radius.circular(100.r),
                        //                 ),
                        //               ),
                        //               child: Column(children: [
                        //                 SizedBox(height: 5.h),
                        //                 Icon(
                        //                   Icons.local_drink,
                        //                 ),
                        //                 SizedBox(height: 5.h),
                        //                 Text(
                        //                   "Burger",
                        //                   style: TextStyle(
                        //                     color: const Color(0xff67666D),
                        //                     fontFamily: "SofiaProR",
                        //                     fontSize: 11.sp,
                        //                   ),
                        //                 )
                        //               ]),
                        //             )),
                        //         SizedBox(width: 14.w),
                        //         SizedBox(
                        //             height: 100.h,
                        //             width: 60.w,
                        //             child: Card(
                        //               color: Colors.white,
                        //               elevation: 5,
                        //               shape: RoundedRectangleBorder(
                        //                 borderRadius: BorderRadius.all(
                        //                   Radius.circular(100.r),
                        //                 ),
                        //               ),
                        //               child: Column(children: [
                        //                 // Image.asset("assets/images/donat.png"),
                        //                 // SizedBox(height: 5.h),
                        //                 Text(
                        //                   "Donat",
                        //                   style: TextStyle(
                        //                       color: const Color(0xff67666D),
                        //                       fontFamily: "SofiaProR",
                        //                       fontSize: 11.sp),
                        //                 )
                        //               ]),
                        //             )),
                        //         SizedBox(width: 14.w),
                        //         SizedBox(
                        //             height: 100.h,
                        //             width: 60.w,
                        //             child: Card(
                        //               color: Colors.white,
                        //               elevation: 5,
                        //               shape: RoundedRectangleBorder(
                        //                 borderRadius: BorderRadius.all(
                        //                   Radius.circular(100.r),
                        //                 ),
                        //               ),
                        //               child: Column(children: [
                        //                 // Image.asset("assets/images/pizza.png"),
                        //                 // SizedBox(height: 2.h),
                        //                 Text(
                        //                   "Pizza",
                        //                   style: TextStyle(
                        //                     color: const Color(0xff67666D),
                        //                     fontFamily: "SofiaProR",
                        //                     fontSize: 11.sp,
                        //                   ),
                        //                 )
                        //               ]),
                        //             )),
                        //         SizedBox(width: 14.w),
                        //         SizedBox(
                        //             height: 100.h,
                        //             width: 60.w,
                        //             child: Card(
                        //               color: Colors.white,
                        //               elevation: 5,
                        //               shape: RoundedRectangleBorder(
                        //                 borderRadius: BorderRadius.all(
                        //                   Radius.circular(100.r),
                        //                 ),
                        //               ),
                        //               child: Column(children: [
                        //                 // Image.asset("assets/images/mexican.png"),
                        //                 // SizedBox(height: 5.h),
                        //                 Text(
                        //                   "Mexican",
                        //                   style: TextStyle(
                        //                       color: const Color(0xff67666D),
                        //                       fontFamily: "SofiaProR",
                        //                       // fontWeight: FontWeight.normal,
                        //                       fontSize: 11.sp),
                        //                 )
                        //               ]),
                        //             )),
                        //         SizedBox(width: 14.w),
                        //         SizedBox(
                        //             height: 100.h,
                        //             width: 60.w,
                        //             child: Card(
                        //               color: Colors.white,
                        //               elevation: 5,
                        //               shape: RoundedRectangleBorder(
                        //                 borderRadius: BorderRadius.all(
                        //                   Radius.circular(100.r),
                        //                 ),
                        //               ),
                        //               child: Column(children: [
                        //                 // Image.asset("assets/images/asian.png"),
                        //                 // SizedBox(height: 5.h),
                        //                 Text(
                        //                   "Asian",
                        //                   style: TextStyle(
                        //                       color: const Color(0xff67666D),
                        //                       fontFamily: "SofiaProR",
                        //                       fontSize: 11.sp),
                        //                 )
                        //               ]),
                        //             )),
                        //         SizedBox(width: 14.w),
                        //         SizedBox(
                        //             height: 100.h,
                        //             width: 60.w,
                        //             child: Card(
                        //               color: Colors.white,
                        //               elevation: 5,
                        //               shape: RoundedRectangleBorder(
                        //                 borderRadius: BorderRadius.all(
                        //                   Radius.circular(100.r),
                        //                 ),
                        //               ),
                        //               child: Column(children: [
                        //                 // Image.asset("assets/images/ice.png"),
                        //                 SizedBox(height: 5.h),
                        //                 Text(
                        //                   "Ice",
                        //                   style: TextStyle(
                        //                       color: const Color(0xff67666D),
                        //                       fontFamily: "SofiaProR",
                        //                       fontSize: 11.sp),
                        //                 )
                        //               ]),
                        //             )),
                        //       ],
                        //     ),
                        //   ),
                        // ),

                        // SizedBox(height: 30.h),
                        // SingleChildScrollView(
                        //   scrollDirection: Axis.vertical,
                        //   child: TabBar(
                        //     controller: _tabConTroller,
                        //     indicatorColor: Colors.transparent,
                        //     labelColor: Colors.white,
                        //     isScrollable: true,
                        //     labelPadding: const EdgeInsets.only(right: 45.0),
                        //     unselectedLabelColor: const Color(0xffA6A6A6),
                        //     tabs: [
                        //       Tab(
                        //         child: Container(
                        //           decoration: BoxDecoration(
                        //               boxShadow: const [
                        //                 BoxShadow(
                        //                   color: Colors.grey,
                        //                   offset: Offset(0.0, 1.0), //(x,y)
                        //                   blurRadius: 8.0,
                        //                 ),
                        //               ],
                        //               color: const Color(0xff406A52),
                        //               borderRadius:
                        //                   BorderRadius.circular(10.r)),
                        //           height: 40,
                        //           width: 90,
                        //           child: const Padding(
                        //               padding: EdgeInsets.all(8.0),
                        //               child: Icon(Icons.fastfood)),
                        //         ),
                        //       ),
                        //       Tab(
                        //           child: Container(
                        //         decoration: BoxDecoration(
                        //             boxShadow: const [
                        //               BoxShadow(
                        //                 color: Colors.grey,
                        //                 offset: Offset(0.0, 1.0), //(x,y)
                        //                 blurRadius: 8.0,
                        //               ),
                        //             ],
                        //             color: const Color(0xff406A52),
                        //             borderRadius: BorderRadius.circular(10.r)),
                        //         height: 40,
                        //         width: 90,
                        //         child: const Padding(
                        //             padding: EdgeInsets.all(8.0),
                        //             child: Icon(
                        //               Icons.local_drink,
                        //             )),
                        //       )),
                        //       Tab(
                        //           child: Container(
                        //         decoration: BoxDecoration(
                        //             boxShadow: const [
                        //               BoxShadow(
                        //                 color: Colors.grey,
                        //                 offset: Offset(0.0, 1.0), //(x,y)
                        //                 blurRadius: 8.0,
                        //               ),
                        //             ],
                        //             color: const Color(0xff406A52),
                        //             borderRadius: BorderRadius.circular(10.r)),
                        //         height: 40,
                        //         width: 90,
                        //         child: const Padding(
                        //             padding: EdgeInsets.all(8.0),
                        //             child: Icon(Icons.icecream)),
                        //       )),
                        //       Tab(
                        //           child: Container(
                        //         decoration: BoxDecoration(
                        //             boxShadow: const [
                        //               BoxShadow(
                        //                 color: Colors.grey,
                        //                 offset: Offset(0.0, 1.0), //(x,y)
                        //                 blurRadius: 8.0,
                        //               ),
                        //             ],
                        //             color: const Color(0xff406A52),
                        //             borderRadius: BorderRadius.circular(10.r)),
                        //         height: 40,
                        //         width: 100,
                        //         child: const Padding(
                        //             padding: EdgeInsets.all(8.0),
                        //             child: Icon(Icons.cake)),
                        //       )),
                        //     ],
                        //   ),
                        // ),
                        //  SizedBox(height: 20.h),

                        // TabBarView(
                        //     controller: _tabConTroller,
                        //     children: <Widget>[
                        //       Text("data"),
                        //       Text("data"),
                        //       Text("data"),
                        //     ]),
                      ])))
        ])));
  }
}
