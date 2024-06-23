import 'package:blackdash_board/core/Utils/colors.dart';
import 'package:flutter/material.dart';

import 'Views/main_screen.dart';

void main() {
  runApp(const DashboardApp());
}

class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
 
      scaffoldBackgroundColor:  Color(AppColors.mainColor),
        brightness: Brightness.dark,
      ),
      home: const MainScreen(),
    );
  }
}

