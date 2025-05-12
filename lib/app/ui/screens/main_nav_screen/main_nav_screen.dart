// file: main_bottom_nav.dart

import 'package:flutter/material.dart';
import 'package:hotel_management/app/ui/screens/AllOption/all_option_screen.dart';
import 'package:hotel_management/app/ui/screens/main_nav_screen/widget/bottom_nav.dart';
import '../EmployeeListScreen/employee_list_screen.dart';
import '../HomeScreen/home_screen.dart';
import '../profile/screens/profile_screen.dart';




class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [

    HomeScreen(),
    AllOptionScreen(),
    EmployeeListScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
