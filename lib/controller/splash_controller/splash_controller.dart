import 'dart:async';
import 'package:flutter/material.dart';
import 'package:money_manager_app/view/widget/bottom_navigation.dart';

class SplashController extends ChangeNotifier {
  void splashTimer(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const BottomNavigationWidget();
        },
      ));
    });
  }
}
