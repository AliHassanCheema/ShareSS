import 'package:flutter/material.dart';
import 'downloader/downloader_vu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Share SS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DownloaderView(),
    );
  }
}
