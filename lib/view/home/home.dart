import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:money_manager_app/utils/colors/colors.dart';
import 'package:money_manager_app/utils/sized_box/size.dart';
import 'package:money_manager_app/view/widget/text_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppColors.kGreen,
        toolbarHeight: MediaQuery.of(context).size.height * 0.18,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: IconButton(
            onPressed: () {
              log("menu icon onTap");
            },
            icon: const Icon(Icons.menu_rounded),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSize.kHeight20,
            const TextWidget(
              name: "hey ,",
              fontSize: 14,
            ),
            const TextWidget(
              name: "Christopher",
              fontWeight: FontWeight.bold,
              color: AppColors.kBlue,
            ),
            AppSize.kHeight20,
            CupertinoSearchTextField(
              borderRadius: BorderRadius.circular(20),
            ),
          ],
        ),
      ),
    );
  }
}
