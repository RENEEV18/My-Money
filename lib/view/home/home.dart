import 'dart:developer';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:money_manager_app/controller/home_controller/home_controller.dart';
import 'package:money_manager_app/utils/colors/colors.dart';
import 'package:money_manager_app/utils/sized_box/size.dart';
import 'package:money_manager_app/view/home/widget/earnings_widget.dart';
import 'package:money_manager_app/view/home/widget/expenses_widget.dart';
import 'package:money_manager_app/view/home/widget/timeline_graph.dart';
import 'package:money_manager_app/view/widget/chiptext.dart';
import 'package:money_manager_app/view/widget/text_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      appBar: AppBar(
        backgroundColor: AppColors.kWhite,
        toolbarHeight: MediaQuery.of(context).size.height * 0.10,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 25, left: 20),
          child: IconButton(
            onPressed: () {
              log("menu icon onTap");
            },
            icon: const Icon(Icons.menu_rounded),
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              name: "hey ,",
              fontSize: 14,
            ),
            TextWidget(
              name: "Christopher",
              fontWeight: FontWeight.bold,
              color: AppColors.kBlue,
            ),
          ],
        ),
      ),
      body: Consumer<HomeController>(
        builder: (context, value, child) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: AppColors.kTransparent,
                        child: Icon(FluentIcons.options_16_regular),
                      ),
                      AppSize.kWidth10,
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: ListView.separated(
                            itemCount: value.finTypeList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return CommonChipWidget(
                                label: value.finTypeList[index],
                                selected: value.selectedOption == index,
                                onSelected: (data) {
                                  value.onSelectedFn(data ? index : -1, index);
                                },
                                labelStyle: TextStyle(
                                  color: value.selectedOption == index
                                      ? AppColors.kWhite
                                      : AppColors.kBlack,
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return AppSize.kWidth10;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  AppSize.kHeight20,
                  const Row(
                    children: [
                      AppSize.kWidth5,
                      TextWidget(
                        name: "Overview",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  AppSize.kHeight20,
                  const Row(
                    children: [
                      EarningsWidget(),
                      AppSize.kWidth10,
                      ExpensesWidget(),
                    ],
                  ),
                  AppSize.kHeight20,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
