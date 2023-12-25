import 'package:flutter/material.dart';
import 'package:money_manager_app/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:money_manager_app/utils/colors/colors.dart';
import 'package:provider/provider.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavController>(
      builder: (context, value, child) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.grid_view_rounded), label: "Schedule"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: "Profile"),
            ],
            currentIndex: value.currentIndex,
            onTap: (data) {
              value.changeBottonNav(data);
            },
            selectedItemColor: AppColors.kBlue,
            unselectedItemColor: AppColors.kBlack.withOpacity(0.5),
          ),
          body: value.screens[value.currentIndex],
        );
      },
    );
  }
}
