import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:money_manager_app/utils/colors/colors.dart';
import 'package:money_manager_app/utils/sized_box/size.dart';
import 'package:money_manager_app/view/widget/text_widget.dart';

class ExpensesWidget extends StatelessWidget {
  const ExpensesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadowColor: AppColors.kWhite,
        surfaceTintColor: AppColors.kWhite,
        color: AppColors.kWhite,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.kWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FluentIcons.arrow_trending_down_16_regular,
                    size: 28,
                    color: AppColors.kRed,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                    decoration: BoxDecoration(
                      color: AppColors.kGreen.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const TextWidget(
                      name: "+1.2%",
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.kGreen,
                    ),
                  ),
                ],
              ),
              AppSize.kHeight10,
              TextWidget(
                name: "EXPENSE",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.kBlack.withOpacity(0.5),
              ),
              AppSize.kHeight10,
              const TextWidget(
                name: "₹100.08",
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
