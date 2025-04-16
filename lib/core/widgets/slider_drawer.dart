import 'package:animalsapp/core/resources/manager_colors.dart';
import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class SliderDrawer extends StatelessWidget {
  const SliderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Text('القائمة الجانبية', style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            leading: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ManagerColors.black,
              ),
            ),
            title: const Text('الرئيسية'),
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.homeView);
            },
          ),
          ListTile(
            leading: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ManagerColors.black,
              ),
            ),
            title: const Text('امراض النحل'),
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.homeView);
            },
          ),
          ListTile(
            leading: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ManagerColors.black,
              ),
            ),
            title: const Text('امراض الخيل'),
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.homeView);
            },
          ),
          ListTile(
            leading: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ManagerColors.black,
              ),
            ),
            title: const Text('امراض الطير'),
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.homeView);
            },
          ),
          ListTile(
            leading: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ManagerColors.black,
              ),
            ),
            title: const Text('امراض القطط'),
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.homeView);
            },
          ),
          ListTile(
            leading: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: ManagerColors.black,
              ),
            ),
            title: const Text('الإعدادات'),
            onTap: () {
              Navigator.pushReplacementNamed(context, Routes.homeView);
            },
          ),
        ],
      ),
    );
  }
}
