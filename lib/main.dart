import 'package:flutter/material.dart';
import 'package:flutter_dashboard/const/constant.dart';
import 'package:flutter_dashboard/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: backgroundColor,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
