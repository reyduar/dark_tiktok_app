import 'package:dark_tiktok_app/config/theme/app_theme.dart';
import 'package:dark_tiktok_app/presentation/screens/discover/discover_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dark TikTok',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen());
  }
}
