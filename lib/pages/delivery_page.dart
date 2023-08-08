import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/c_page.dart';

import 'package:foodu_app/pages/payement_page.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  String option = "Door delivery";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
          SizedBox(height: 50.h),
          Row(
            children: [
              SizedBox(
                width: 20.w,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => const CPage()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: const Color(0xff3F654F),
                    size: 30.sp,
                  )),
              SizedBox(width: 40.w),
              Text(
                "    Checkout",
                style: TextStyle(
                    color: const Color(0xff3F654F),
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 60.w),
              Icon(
                (Icons.shopping_bag_rounded),
                color: const Color(0xff3F654F),
                size: 35.h,
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Text(
            "    Delivery",
            style: TextStyle(
                color: const Color(0xff3F654F),
                fontSize: 34.sp,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              SizedBox(width: 35.w),
              Text(
                "Address detail",
                style: TextStyle(
                    color: const Color(0xff3F654F),
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 120.w),
              Text(
                "    change",
                style: TextStyle(
                    color: const Color(0xff3F654F),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Center(
                  child: Container(
                      height: 170.h,
                      width: 320.w,
                      decoration: BoxDecoration(
                          color: const Color(0xffEDEDED),
                          borderRadius: BorderRadius.circular(20.r)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    Text(
                      "       DELIVERY ADRESS",
                      style: TextStyle(
                          color: const Color(0xff3F654F),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      thickness: 2,
                      indent: 10,endIndent: 10,
                    ),
                    SizedBox(
                      height: 30.h,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20.h),
                          hintText: "Enter your home address",
                          hintStyle: TextStyle(
                            fontSize: 17.sp,
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
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "       PHONE NUMBER",
                      style: TextStyle(
                          color: const Color(0xff3F654F),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(
                      thickness: 2,
                        indent: 10,endIndent: 10,
                    ),
                    SizedBox(
                      height: 30.h,
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20.h),
                          hintText: "Enter your contact number",
                          hintStyle: TextStyle(
                            fontSize: 17.sp,
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
                              borderSide:
                                  const BorderSide(color: Colors.transparent)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "        Address detail",
            style: TextStyle(
                color: const Color(0xff3F654F),
                fontSize: 17.sp,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 20.h),
          Center(
              child: Container(
            height: 170.h,
            width: 320.w,
            decoration: BoxDecoration(
                color: const Color(0xffEDEDED),
                borderRadius: BorderRadius.circular(20.r)),
                child: Column(
                  children: [
                      RadioListTile(
          title: Text("Door delivery"),
          value: "Door delivery", 
          groupValue:option, 
          onChanged: (value){
            setState(() {
                option= value.toString();
            });
          },
      ),
 Divider(
                      thickness: 2,
                        indent: 10,endIndent: 10,
                    ),
      RadioListTile(
          title: Text("Pick up"),
          value: "Pick up", 
          groupValue: option, 
          onChanged: (value){
            setState(() {
                option = value.toString();
            });
          },
      ),

                  ],
                ),
          )),
          SizedBox(height: 40.h),
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
          Center(
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
                      Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const PaymentPage()));
                  },
                  child: Text(
                    "Complete order",
                    style: TextStyle(
                        color: const Color(0xffECECEC),
                        fontSize: 18.sp,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        ]),
      ),
    ));
  }
}
