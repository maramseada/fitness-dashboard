import 'package:flutter/material.dart';

import 'center_widget_tablet.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: SizedBox(child: CenterWidgetTablet()),
            ),
          ],
        ),
      ),
    );
  }
}
