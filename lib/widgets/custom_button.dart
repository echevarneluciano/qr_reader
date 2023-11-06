import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      elevation: 0,
      onPressed: () async {
        //String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode('#3D8BEF', 'Cancelar', false, ScanMode.QR);
        final barcodeScanRes = 'https://lalala.com.ar';
        print(barcodeScanRes);
      },
      child: const Icon(Icons.filter_center_focus),
    );
  }
}
