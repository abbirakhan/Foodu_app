import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodu_app/pages/home_page.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 188, 184, 184),
      child: ListView(
        children: [
          Padding(
            padding: REdgeInsets.all(16.0),
            child: Text(
              'Menu',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
          ),
          const Divider(
            thickness: 1,
          ),
          const ListTile(
            leading: Text(
              'Main',
            ),
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text("Profile"),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("menu"),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomePage()),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("cart"),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => HomePage()),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.book),
            title: Text("Privacy Policy"),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Logout"),
          ),
          const ListTile(
            leading: Icon(Icons.date_range),
            title: Text("setting"),
          ),
          // const ListTile(
          //   leading: Icon(Icons.date_range),
          //   title: Text("Cart Checkout"),
          // ),
        ],
      ),
    );
  }
}
