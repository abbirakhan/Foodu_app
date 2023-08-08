import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/c_page.dart';
import 'package:foodu_app/pages/home_page.dart';

import 'package:foodu_app/pages/test_page.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: REdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: (52),
              backgroundColor: Colors.white,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/p.jpg',
                  )),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera,
              color: const Color(0xff406A52),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          ListTile(
            leading: Text('Main',
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 25.sp,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: const Icon(
              Icons.category,
              color: Color(0xff406A52),
            ),
            title: Text("Profile",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 15.sp,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold)),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Color(0xff406A52),
            ),
            title: Text("menu",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 15.sp,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold)),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomePage()),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home_outlined,
              color: Color(0xff406A52),
            ),
            title: Text("cart",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 15.sp,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold)),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const CPage()),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.book,
              color: Color(0xff406A52),
            ),
            title: Text("Setting",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 15.sp,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Color(0xff406A52),
            ),
            title: Text("Logout",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 15.sp,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold)),
          ),
          ListTile(
            leading: const Icon(
              Icons.date_range,
              color: Color(0xff406A52),
            ),
            title: Text("Privacy Policy",
                style: TextStyle(
                    color: const Color(0xff406A52),
                    fontSize: 15.sp,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
