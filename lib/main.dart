import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_market/presentation/pages/get_started_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Set the status bar color
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor:
            Colors.transparent, // Set to transparent or your preferred color
        statusBarIconBrightness:
            Brightness.dark, // Use Brightness.light for dark status bar icons
      ),
    );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
    );
  }
}
