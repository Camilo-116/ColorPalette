import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';

import '../../utils/color_utils.dart';
import '../widgets/color_palette.dart';

class ColorSelectionPage extends StatelessWidget {
  const ColorSelectionPage({Key? key}) : super(key: key);

  void showDialog() {
    Get.dialog(const AlertDialog(
      title: Text('Flutter'),
      content: Text('Dialog'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Color palette app'),
          actions: [
            IconButton(onPressed: showDialog, icon: Icon(Icons.info_outline))
          ],
        ),
        // https://colorhunt.co/
        body: (Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ColorPalette(
                  baseColor: '293462',
                  baseColor1: 'D61C4E',
                  baseColor2: 'FEB139',
                  baseColor3: 'FFF80A',
                  callback: showColor),
              ColorPalette(
                  baseColor: '554994',
                  baseColor1: 'F675A8',
                  baseColor2: 'F29393',
                  baseColor3: 'FFCCB3',
                  callback: showColor),
              ColorPalette(
                  baseColor: '820000',
                  baseColor1: 'B9005B',
                  baseColor2: 'FF7C7C',
                  baseColor3: 'FEE0C0',
                  callback: showColor),
              ColorPalette(
                  baseColor: '002B5B',
                  baseColor1: '2B4865',
                  baseColor2: '256D85',
                  baseColor3: '8FE3CF',
                  callback: showColor),
              ColorPalette(
                  baseColor: '100720',
                  baseColor1: '31087B',
                  baseColor2: 'FA2FB5',
                  baseColor3: 'FFC23C',
                  callback: showColor),
              ColorPalette(
                  baseColor: '100F0F',
                  baseColor1: '0F3D3E',
                  baseColor2: 'E2DCC8',
                  baseColor3: 'F1F1F1',
                  callback: showColor),
              ColorPalette(
                  baseColor: '5800FF',
                  baseColor1: '0096FF',
                  baseColor2: '00D7FF',
                  baseColor3: '72FFFF',
                  callback: showColor),
            ],
          )),
        )));
  }

  // está es la función que será llamada con cada click a un ColorPalette
  void showColor(String value) {
    Clipboard.setData(ClipboardData(text: value));
    Get.snackbar(
      'Color palette',
      'Valor copiado',
      backgroundColor: ColorUtils.FromHex(value),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
