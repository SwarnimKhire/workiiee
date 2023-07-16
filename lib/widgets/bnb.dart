import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sunday/utils/colors.dart';


Widget bnB({void Function(int)? ontap, required int selectedIndex}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: ClipRRect(
      
      borderRadius: BorderRadius.circular(32),
      child: BottomNavigationBar(
          backgroundColor: balck2Color,
          type: BottomNavigationBarType.fixed, // Fixed
          elevation: 2,
          selectedItemColor: neonColor,
          unselectedItemColor:whiteColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 24,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Ionicons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.rocket),
              label: 'search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ionicons.bar_chart),
              label: 'account',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'settings')
          ],
          currentIndex: selectedIndex, //New
    
          onTap: ontap),
    ),
  );
}


