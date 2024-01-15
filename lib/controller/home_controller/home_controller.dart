import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int selectedOption = -1;
  List finTypeList = ["All", "Earnings", "Expense"];
  void onSelectedFn(int isSelect, int index) {
    selectedOption = isSelect;
    notifyListeners();
  }
}
