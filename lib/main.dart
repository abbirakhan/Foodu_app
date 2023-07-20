import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/home_page.dart';
//import 'package:foodu_app/pages/Login_page.dart';
//import 'package:foodu_app/pages/splash_screen.dart';

//import 'package:foodu_app/pages/splash_screen.dart';
//import 'package:foodu_app/pages/home_page.dart';
//import 'package:foodu_app/pages/splash_screen.dart';
//import 'package:foodu_app/pages/sigin_page.dart';

//import 'package:foodu_app/pages/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          // useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
