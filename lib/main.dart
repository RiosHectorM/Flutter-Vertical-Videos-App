import 'package:flutter/material.dart';
import 'package:vertical_videos/config/theme/app_theme.dart';
import 'package:vertical_videos/presentation/screens/discover/discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      title: 'Vertical Videos',
      home: const DiscoverScreen()
    );
  }
}

