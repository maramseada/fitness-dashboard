import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'center_widget.dart';
import 'center_widget_tablet.dart';
import 'custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(  body: SafeArea(
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: SizedBox(
                child: CustomDrawer(),
              )
          ),
          Expanded(
            flex: 8,
            child: SizedBox(
              child:
              CenterWidgetTablet
                ()            ),
          ),

        ],
      ),  ),
    );
  }
}
