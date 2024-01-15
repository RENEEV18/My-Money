import 'package:flutter/material.dart';
import 'package:money_manager_app/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:money_manager_app/controller/home_controller/home_controller.dart';
import 'package:money_manager_app/controller/splash_controller/splash_controller.dart';
import 'package:money_manager_app/view/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SplashController(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomNavController(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomeController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: "Poppins",
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
