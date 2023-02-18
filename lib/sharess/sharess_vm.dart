// import 'dart:ui';

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';
import 'package:stacked/stacked.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

class ShareSSViewModel extends BaseViewModel {
  var scr = GlobalKey();
  takescrshot() async {
    RenderRepaintBoundary boundary = scr.currentContext!.findRenderObject() as RenderRepaintBoundary;
    var image = await boundary.toImage();
    var byteData = await image.toByteData(format: ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();
    final temp = await pathProvider.getTemporaryDirectory();
    final path = '${temp.path}/file.png';
    debugPrint('>>>path: >>>>>>>$path >>>>');
    File(path).writeAsBytesSync(pngBytes);
    await Share.shareXFiles([XFile(path)], text: 'PDF Share');
    debugPrint('>>>>>>>>>>$pngBytes >>>>');
  }
}
