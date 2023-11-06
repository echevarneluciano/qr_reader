import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';

class CustomNavigator extends StatelessWidget {
  const CustomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final index = uiProvider.selectedMenuOp;

    return BottomNavigationBar(
        onTap: (int i) => uiProvider.selectedMenuOp = i,
        currentIndex: index,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Mapa'),
          BottomNavigationBarItem(
              icon: Icon(Icons.compass_calibration), label: 'Direcciones')
        ]);
  }
}
