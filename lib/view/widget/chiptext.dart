import 'package:flutter/material.dart';
import 'package:money_manager_app/utils/colors/colors.dart';
import 'package:money_manager_app/view/widget/text_widget.dart';

class CommonChipWidget extends StatelessWidget {
  const CommonChipWidget({
    super.key,
    required this.label,
    this.labelStyle,
    this.onSelected,
    required this.selected,
    this.padding,
  });
  final String label;
  final TextStyle? labelStyle;
  final Function(bool)? onSelected;
  final bool selected;
  final EdgeInsets? padding;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      padding: padding,
      autofocus: true,
      label: TextWidget(name: label),
      onSelected: onSelected,
      selected: selected,
      selectedColor: AppColors.kBlue,
      disabledColor: AppColors.kWhite,
      labelStyle: labelStyle,
      shape: const StadiumBorder(),
      showCheckmark: false,
    );
  }
}
