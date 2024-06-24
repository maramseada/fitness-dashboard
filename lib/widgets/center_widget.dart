import 'package:blackdash_board/core/Utils/font_size.dart';
import 'package:blackdash_board/widgets/search_widget.dart';
import 'package:flutter/material.dart';

import 'activity_levels_listview.dart';
import 'center_list_view.dart';
import 'flow_chart_widget.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: getResponsiveFontSize(
                  context,
                  fontSize: 20,
                ),
                horizontal: getResponsiveFontSize(
                  context,
                  fontSize: 15,
                ),
              ),
              child: const SearchWidget(),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: getResponsiveFontSize(
                  context,
                  fontSize: 15,
                ),
              ),
              child: const CenterListView(),
            ),
            SizedBox(
              height: getResponsiveFontSize(context, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: getResponsiveFontSize(
                  context,
                  fontSize: 15,
                ),
              ),
              child: const LineChartWidget(),
            ),
            SizedBox(
              height: getResponsiveFontSize(context, fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: getResponsiveFontSize(
                  context,
                  fontSize: 15,
                ),
              ),
              child: const ActivityLevelListView(
                count: 3,
              ),
            ),
            SizedBox(
              height: getResponsiveFontSize(context, fontSize: 20),
            ),
          ],
        ),
      )),
    );
  }
}
