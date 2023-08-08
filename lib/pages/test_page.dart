// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:foodu_app/pages/c_page.dart';

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
//         toolbarHeight: 90,
//         backgroundColor: Colors.white.withOpacity(0.1),
//         iconTheme: const IconThemeData(
//           color: Color(0xff406A52),
//         ),
//         elevation: 0,
//         actions: [
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.search,
//                 color: const Color(0xff406A52),
//               )),
//           IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.shopify_sharp,
//                 color: const Color(0xff406A52),
//               )),
//         ],
//       ),
//       body: SafeArea(
//         child: Column(children: [
//           Stack(
//             children: [
//               Container(
//                 // color: Colors.amber,
//                 height: 729.9.h,
//                 width: 375.w,
//               ),
//               Positioned(
//                 left: -90.w,
//                 top: 100.h,
//                 child: Image.asset(
//                   'assets/images/or.png',
//                   height: 140.h,
//                   width: 140.w,
//                 ),
//               ),
//               Positioned(
//                 right: -60.w,
//                 bottom: -50.h,
//                 child: Image.asset(
//                   'assets/images/2.png',
//                   height: 250.h,
//                   width: 340.w,
//                 ),
//               ),
//               Column(
//                 children: [
//                   Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "DELICIOUS FOOD",
//                           style: TextStyle(
//                               color: const Color(0xff406A52),
//                               fontSize: 35.sp,
//                               fontStyle: FontStyle.normal,
//                               fontWeight: FontWeight.w900),
//                         ),
//                         Text(
//                           "AT YOUR DOOR STEP ",
//                           style: TextStyle(
//                             color: const Color(0xffA6A6A6),
//                             fontSize: 23.sp,
//                             fontStyle: FontStyle.normal,
//                           ),
//                         ),
//                         SizedBox(height: 15.h),
//                         Text(
//                           "Categories ",
//                           style: TextStyle(
//                               color: const Color(0xff406A52),
//                               fontSize: 23.sp,
//                               fontStyle: FontStyle.normal,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ]),
//                   SizedBox(height: 20.h),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         SizedBox(
//                             height: 50.h,
//                             width: 100.w,
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   boxShadow: const [
//                                     BoxShadow(
//                                       color: Colors.grey,
//                                       offset: Offset(0.0, 1.0), //(x,y)
//                                       blurRadius: 0.0,
//                                     ),
//                                   ],
//                                   color: const Color(0xff406A52),
//                                   borderRadius: BorderRadius.circular(10.r)),
//                               height: 40,
//                               width: 90,
//                               child: const Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Icon(
//                                     Icons.local_drink,
//                                   )),
//                             )),
//                         SizedBox(width: 14.w),
//                         SizedBox(
//                             height: 50.h,
//                             width: 100.w,
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   boxShadow: const [
//                                     BoxShadow(
//                                       color: Colors.grey,
//                                       offset: Offset(0.0, 1.0), //(x,y)
//                                       blurRadius: 8.0,
//                                     ),
//                                   ],
//                                   color: const Color(0xff406A52),
//                                   borderRadius: BorderRadius.circular(10.r)),
//                               height: 40,
//                               width: 90,
//                               child: const Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Icon(
//                                     Icons.local_pizza,
//                                   )),
//                             )),
//                         SizedBox(width: 14.w),
//                         SizedBox(
//                             height: 50.h,
//                             width: 100.w,
//                             child: Container(
//                               decoration: BoxDecoration(
//                                   boxShadow: const [
//                                     BoxShadow(
//                                       color: Colors.grey,
//                                       offset: Offset(0.0, 1.0), //(x,y)
//                                       blurRadius: 8.0,
//                                     ),
//                                   ],
//                                   color: const Color(0xff406A52),
//                                   borderRadius: BorderRadius.circular(10.r)),
//                               height: 40,
//                               width: 90,
//                               child: const Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: Icon(
//                                     Icons.cake,
//                                   )),
//                             )),
//                         SizedBox(width: 14.w),
//                         SizedBox(
//                           height: 50.h,
//                           width: 100.w,
//                           child: Container(
//                             decoration: BoxDecoration(
//                                 boxShadow: const [
//                                   BoxShadow(
//                                     color: Colors.grey,
//                                     offset: Offset(0.4, 1.0), //(x,y)
//                                     blurRadius: 8.0,
//                                   ),
//                                 ],
//                                 color: const Color(0xff406A52),
//                                 borderRadius: BorderRadius.circular(10.r)),
//                             height: 40,
//                             width: 90,
//                             child: const Padding(
//                                 padding: EdgeInsets.all(8.0),
//                                 child: Icon(
//                                   Icons.icecream,
//                                 )),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 50.h),
//                   Column(
//                     children: [
//                       SizedBox(
//                         height: 200,
//                         width: 350,
//                         child: Card(
//                           child: Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 ClipRRect(
//                                   // borderRadius:
//                                   // BorderRadius.all(Radius.circular(40)),
//                                   child: Image.asset(
//                                     'assets/images/new.jpg',
//                                     height: 250,
//                                     width: 180,
//                                   ),
//                                 ),
//                                 Text("Complet Fresh ",
//                                     style: TextStyle(
//                                         color: const Color(0xff406A52),
//                                         fontSize: 16.sp,
//                                         fontWeight: FontWeight.bold)),
//                               ],
//                             ),
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ]),
//       ),
//     );
//   }
// }
