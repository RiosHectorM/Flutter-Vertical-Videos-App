import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_videos/config/theme/app_theme.dart';
import 'package:vertical_videos/presentation/providers/discover_provider.dart';
import 'package:vertical_videos/presentation/screens/discover/discover_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [ChangeNotifierProvider(
        lazy: false,
        create: (_) => DiscoverProvider()..loadNextPage())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme().getTheme(),
          title: 'Vertical Videos',
          home: const DiscoverScreen()),
    );
  }
}
