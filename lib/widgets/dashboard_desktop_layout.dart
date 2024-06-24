
import 'package:blackdash_board/widgets/summary_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'center_widget.dart';
import 'custom_drawer.dart';

class DashBoardDeskTopLayout extends StatelessWidget {
  const DashBoardDeskTopLayout({super.key});

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
              CenterWidget(),
            ),
          ),
          Expanded(
            flex: 5,
            child:SummaryWidget()
          ),
        ],
      ),  ),
    );
  }
}