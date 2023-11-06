import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuOp = 0;

  int get selectedMenuOp {
    return _selectedMenuOp;
  }

  set selectedMenuOp(int i) {
    _selectedMenuOp = i;
    notifyListeners();
  }
}
