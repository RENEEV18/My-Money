import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:money_manager_app/utils/colors/colors.dart';
import 'package:money_manager_app/utils/sized_box/size.dart';
import 'package:money_manager_app/view/widget/text_widget.dart';

class EarningsWidget extends StatelessWidget {
  const EarningsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        elevation: 2,
        shadowColor: AppColors.kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: AppColors.kWhite),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    FluentIcons.arrow_trending_12_regular,
                    color: AppColors.kBlue,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(110, 16, 212, 22)
                          .withOpacity(0.2),
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
                name: "EARNINGS",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: AppColors.kBlack.withOpacity(0.5),
              ),
              AppSize.kHeight10,
              const TextWidget(
                name: "₹500.20",
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
