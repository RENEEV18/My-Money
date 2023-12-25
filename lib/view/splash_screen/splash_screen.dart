import 'package:flutter/material.dart';
import 'package:money_manager_app/controller/splash_controller/splash_controller.dart';
import 'package:money_manager_app/utils/colors/colors.dart';
import 'package:money_manager_app/utils/sized_box/size.dart';
import 'package:money_manager_app/view/widget/text_widget.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<SplashController>(context, listen: false)
          .splashTimer(context);
    });
    return const Scaffold(
      backgroundColor: AppColors.kBlue,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppSize.kHeight20,
              TextWidget(
                name: "my.Money",
                color: AppColors.kWhite,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              AppSize.kHeight20,
              SizedBox(
                height: 14,
                width: 14,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: AppColors.kWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
