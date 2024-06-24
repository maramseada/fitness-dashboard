import 'package:blackdash_board/core/Utils/colors.dart';
import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';

import 'Views/main_screen.dart';

void main() {
 runApp(const DashboardApp());
  // runApp(
  //   DevicePreview(enabled: true, builder: (context) => const DashboardApp() // Wrap your app
  //       ),
  // );
}


class DashboardApp extends StatelessWidget {
  const DashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(AppColors.mainColor),
        brightness: Brightness.dark,
      ),
      home: const MainScreen(),
    );
  }
}
