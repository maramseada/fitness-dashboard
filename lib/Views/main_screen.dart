import 'package:blackdash_board/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/adaptive_layout_widget.dart';
import '../widgets/center_widget.dart';
import '../widgets/dashboad_tablet_layout.dart';
import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/dashboard_mobile_layout.dart';
import '../widgets/summary_widget.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout:(context)=>  const DashBoardDeskTopLayout()),

    );
  }
}