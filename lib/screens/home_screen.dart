import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/db_provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/screens/screens.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Historial'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: _HomeBody(),
      bottomNavigationBar: const CustomNavigator(),
      floatingActionButton: const CustomButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final index = uiProvider.selectedMenuOp;
    DbProvider.db;

    switch (index) {
      case 0:
        return MapasScreen();
      case 1:
        return DireccionesScreen();
      default:
        return MapasScreen();
    }
  }
}
