// import 'package:flutter/material.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:foodu_app/pages/c_page.dart';
// import 'package:foodu_app/pages/cart_bucket_page.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         backgroundColor: Colors.white,
//         child: ListView(
//           children: [
//             Padding(
//               padding: REdgeInsets.all(16.0),
//               child: CircleAvatar(
//                 radius: (52),
//                 backgroundColor: Colors.white,
//                 child: ClipRRect(
//                     borderRadius: BorderRadius.circular(50),
//                     child: Image.asset(
//                       'assets/images/p.jpg',
//                     )),
//               ),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.camera,
//                 color: const Color(0xff406A52),
//               ),
//             ),
//             const Divider(
//               thickness: 1,
//             ),
//             ListTile(
//               leading: Text('Main',
//                   style: TextStyle(
//                       color: const Color(0xff406A52),
//                       fontSize: 25.sp,
//                       fontStyle: FontStyle.normal,
//                       fontWeight: FontWeight.bold)),
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.category,
//                 color: Color(0xff406A52),
//               ),
//               title: Text("Profile",
//                   style: TextStyle(
//                       color: const Color(0xff406A52),
//                       fontSize: 15.sp,
//                       fontStyle: FontStyle.normal,
//                       fontWeight: FontWeight.bold)),
//               onTap: () => Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => const HomePage(),
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.person,
//                 color: Color(0xff406A52),
//               ),
//               title: Text("menu",
//                   style: TextStyle(
//                       color: const Color(0xff406A52),
//                       fontSize: 15.sp,
//                       fontStyle: FontStyle.normal,
//                       fontWeight: FontWeight.bold)),
//               onTap: () => Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const HomePage()),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.home_outlined,
//                 color: Color(0xff406A52),
//               ),
//               title: Text("cart",
//                   style: TextStyle(
//                       color: const Color(0xff406A52),
//                       fontSize: 15.sp,
//                       fontStyle: FontStyle.normal,
//                       fontWeight: FontWeight.bold)),
//               onTap: () => Navigator.of(context).push(
//                 MaterialPageRoute(builder: (context) => const CPage()),
//               ),
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.book,
//                 color: Color(0xff406A52),
//               ),
//               title: Text("Setting",
//                   style: TextStyle(
//                       color: const Color(0xff406A52),
//                       fontSize: 15.sp,
//                       fontStyle: FontStyle.normal,
//                       fontWeight: FontWeight.bold)),
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.settings,
//                 color: Color(0xff406A52),
//               ),
//               title: Text("Logout",
//                   style: TextStyle(
//                       color: const Color(0xff406A52),
//                       fontSize: 15.sp,
//                       fontStyle: FontStyle.normal,
//                       fontWeight: FontWeight.bold)),
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.date_range,
//                 color: Color(0xff406A52),
//               ),
//               title: Text("Privacy Policy",
//                   style: TextStyle(
//                       color: const Color(0xff406A52),
//                       fontSize: 15.sp,
//                       fontStyle: FontStyle.normal,
//                       fontWeight: FontWeight.bold)),
//             ),
//           ],
//         ),
//       ),
//       appBar: AppBar(
//         toolbarHeight: 50,
//         backgroundColor: Colors.white.withOpacity(0.1),
//         iconTheme: const IconThemeData(color: Colors.black),
//         elevation: 0,
//         actions: [
//           IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
//           IconButton(onPressed: () {}, icon: const Icon(Icons.shopify_sharp)),
//         ],
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "DELICIOUS FOOD",
//                         style: TextStyle(
//                             color: const Color(0xff406A52),
//                             fontSize: 35.sp,
//                             fontStyle: FontStyle.normal,
//                             fontWeight: FontWeight.w900),
//                       ),
//                       Text(
//                         "AT YOUR DOOR STEP ",
//                         style: TextStyle(
//                           color: const Color(0xffA6A6A6),
//                           fontSize: 23.sp,
//                           fontStyle: FontStyle.normal,
//                         ),
//                       ),
//                       SizedBox(height: 20.h),
//                       Text(
//                         "Categories ",
//                         style: TextStyle(
//                             color: const Color(0xff406A52),
//                             fontSize: 23.sp,
//                             fontStyle: FontStyle.normal,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     ]),
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     SizedBox(
//                         height: 50.h,
//                         width: 100.w,
//                         child: Container(
//                           decoration: BoxDecoration(
//                               boxShadow: const [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   offset: Offset(0.0, 1.0), //(x,y)
//                                   blurRadius: 0.0,
//                                 ),
//                               ],
//                               color: const Color(0xff406A52),
//                               borderRadius: BorderRadius.circular(10.r)),
//                           height: 40,
//                           width: 90,
//                           child: const Padding(
//                               padding: EdgeInsets.all(8.0),
//                               child: Icon(
//                                 Icons.local_drink,
//                               )),
//                         )),
//                     SizedBox(width: 14.w),
//                     SizedBox(
//                         height: 50.h,
//                         width: 100.w,
//                         child: Container(
//                           decoration: BoxDecoration(
//                               boxShadow: const [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   offset: Offset(0.0, 1.0), //(x,y)
//                                   blurRadius: 8.0,
//                                 ),
//                               ],
//                               color: const Color(0xff406A52),
//                               borderRadius: BorderRadius.circular(10.r)),
//                           height: 40,
//                           width: 90,
//                           child: const Padding(
//                               padding: EdgeInsets.all(8.0),
//                               child: Icon(
//                                 Icons.local_pizza,
//                               )),
//                         )),
//                     SizedBox(width: 14.w),
//                     SizedBox(
//                         height: 50.h,
//                         width: 100.w,
//                         child: Container(
//                           decoration: BoxDecoration(
//                               boxShadow: const [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   offset: Offset(0.0, 1.0), //(x,y)
//                                   blurRadius: 8.0,
//                                 ),
//                               ],
//                               color: const Color(0xff406A52),
//                               borderRadius: BorderRadius.circular(10.r)),
//                           height: 40,
//                           width: 90,
//                           child: const Padding(
//                               padding: EdgeInsets.all(8.0),
//                               child: Icon(
//                                 Icons.cake,
//                               )),
//                         )),
//                     SizedBox(width: 14.w),
//                     SizedBox(
//                       height: 50.h,
//                       width: 100.w,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             boxShadow: const [
//                               BoxShadow(
//                                 color: Colors.grey,
//                                 offset: Offset(0.4, 1.0), //(x,y)
//                                 blurRadius: 8.0,
//                               ),
//                             ],
//                             color: const Color(0xff406A52),
//                             borderRadius: BorderRadius.circular(10.r)),
//                         height: 40,
//                         width: 90,
//                         child: const Padding(
//                             padding: EdgeInsets.all(8.0),
//                             child: Icon(
//                               Icons.icecream,
//                             )),
//                       ),
//                     )
//                   ],
//                 ),
//               ),

//               ///////////
//               SizedBox(height: 50.h),
//               Column(
//                 children: [
//                   Container(
//                     height: 140.h,
//                     width: 320.w,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                           bottomLeft: Radius.circular(10),
//                           bottomRight: Radius.circular(10)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 5,
//                           blurRadius: 7,
//                           offset: Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 20.h),
//                   Container(
//                     height: 140.h,
//                     width: 320.w,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                           bottomLeft: Radius.circular(10),
//                           bottomRight: Radius.circular(10)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 5,
//                           blurRadius: 7,
//                           offset: Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                     child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             margin: EdgeInsets.all(5.r),
//                             height: 120.h,
//                             width: 110.w,
//                             decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   blurRadius: 8.r,
//                                 ),
//                               ],
//                               borderRadius: BorderRadius.circular(20),
//                               image: const DecorationImage(
//                                 image: AssetImage("assets/images/new.jpg"),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                           Text("Complet Fresh ",
//                               style: TextStyle(
//                                   color: const Color(0xff406A52),
//                                   fontSize: 20.sp,
//                                   fontWeight: FontWeight.bold)),
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("4.5",
//                                   style: TextStyle(
//                                       color: const Color(0xff406A52),
//                                       fontSize: 20.sp,
//                                       fontWeight: FontWeight.bold)),
//                               Image.asset(
//                                 'assets/images/star.png',
//                                 height: 22.h,
//                                 width: 22.w,
//                               ),
//                               Column(
//                                 children: [
//                                   Container(
//                                     margin: EdgeInsets.all(2.r),
//                                     height: 35.h,
//                                     width: 40.w,
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xffECECEC),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: Colors.grey,
//                                           blurRadius: 8.r,
//                                         ),
//                                       ],
//                                       borderRadius: BorderRadius.circular(10.r),
//                                     ),
//                                     child: IconButton(
//                                         onPressed: () {
//                                           Navigator.of(context).pushReplacement(
//                                               MaterialPageRoute(
//                                                   builder: (_) =>
//                                                       const CartBucket()));
//                                         },
//                                         icon: Icon(
//                                           Icons.add,
//                                           color: const Color(0xff406A52),
//                                         )),
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                         ]),

// //
//                   ),
//                   SizedBox(height: 20.h),
//                   Container(
//                     height: 140.h,
//                     width: 320.w,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                           bottomLeft: Radius.circular(10),
//                           bottomRight: Radius.circular(10)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 5,
//                           blurRadius: 7,
//                           offset: Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 20.h),
//                   Container(
//                     height: 140.h,
//                     width: 320.w,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                           bottomLeft: Radius.circular(10),
//                           bottomRight: Radius.circular(10)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 5,
//                           blurRadius: 7,
//                           offset: Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 20.h),
//                   Container(
//                     height: 140.h,
//                     width: 320.w,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                           bottomLeft: Radius.circular(10),
//                           bottomRight: Radius.circular(10)),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.grey.withOpacity(0.5),
//                           spreadRadius: 5,
//                           blurRadius: 7,
//                           offset: Offset(0, 3), // changes position of shadow
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
