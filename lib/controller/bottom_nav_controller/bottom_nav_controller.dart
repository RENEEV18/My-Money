import 'package:flutter/material.dart';
import 'package:money_manager_app/view/home/home.dart';

class BottomNavController extends ChangeNotifier {
  int currentIndex = 0;
  void changeBottonNav(int index) {
    currentIndex = index;
    notifyListeners();
  }

  var screens = const [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
}
