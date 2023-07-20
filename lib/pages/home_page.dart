import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff406A52),
        actions: [
          // SizedBox(
          //  height: 10.h,
          //   width: 220.w,
          //   child: TextField(
          //     decoration: InputDecoration(
          //       contentPadding: EdgeInsets.all(15.h),
          //       fillColor: const Color(0xffECECEC),
          //       filled: true,
          //       hintText: "serach your item",
          //       hintStyle: TextStyle(
          //         fontSize: 12.sp,
          //         // fontStyle: FontStyle.italic,
          //         fontWeight: FontWeight.normal,
          //         color: const Color(0xffA6A6A6),
          //       ),
          //       enabledBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(34.r)),
          //           borderSide: const BorderSide(
          //             color: Colors.transparent,
          //           )),
          //       focusedBorder: OutlineInputBorder(
          //           borderRadius: BorderRadius.all(Radius.circular(34.r)),
          //           borderSide: const BorderSide(
          //             color: Colors.grey,
          //           )),
          //     ),
          //   ),
          // ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_checkout),
          ),
        ],
      ),
      body: Stack(
        children: [
          
        ],
      ),
      // body: Padding(
      //   padding: EdgeInsets.all(8.0.h),
      //   child: Column(
      //     children: [
      //       SizedBox(height: 35.h),
      //       Row(
      //         children: [
      //           IconButton(
      //             onPressed: () {
      //             // Scaffold.of(context).openDrawer();
      //             },
      //             icon: Icon(
      //               Icons.menu,
      //               color: const Color.fromARGB(255, 118, 116, 116),
      //               size: 35.sp,
      //             ),
      //           ),
      //           SizedBox(width: 7.w),
      //           SizedBox(
      //             height: 40.h,
      //             width: 240.w,
      //             child: TextField(
      //               decoration: InputDecoration(
      //                 prefixIcon: Align(
      //                   widthFactor: 1.0.w,
      //                   heightFactor: 1.0.h,
      //                   child: const Icon(
      //                     Icons.search,
      //                     color: Color.fromARGB(255, 118, 116, 116),
      //                   ),
      //                 ),
      //                 contentPadding: EdgeInsets.all(15.h),
      //                 fillColor: const Color(0xffECECEC),
      //                 filled: true,
      //                 hintText: "what do you wnat to buy?",
      //                 hintStyle: TextStyle(
      //                   fontSize: 12.sp,
      //                   // fontStyle: FontStyle.italic,
      //                   fontWeight: FontWeight.normal,
      //                   color: const Color(0xffA6A6A6),
      //                 ),
      //                 enabledBorder: OutlineInputBorder(
      //                     borderRadius: BorderRadius.all(Radius.circular(34.r)),
      //                     borderSide: const BorderSide(
      //                       color: Colors.transparent,
      //                     )),
      //                 focusedBorder: OutlineInputBorder(
      //                     borderRadius: BorderRadius.all(Radius.circular(34.r)),
      //                     borderSide: const BorderSide(
      //                       color: Colors.grey,
      //                     )),
      //               ),
      //             ),
      //           ),
      //           IconButton(
      //             onPressed: () {},
      //             icon: const Icon(
      //               Icons.shopping_cart_checkout,
      //               color: Color(0xff406A52),
      //             ),
      //           )
      //         ],
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
