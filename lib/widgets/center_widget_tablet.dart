import 'package:blackdash_board/widgets/pie_chart_widget.dart';
import 'package:blackdash_board/widgets/search_widget.dart';
import 'package:blackdash_board/widgets/summary_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/Utils/font_Styles.dart';
import 'Sceduled_list_view.dart';
import 'activity_levels_listview.dart';
import 'center_list_view.dart';
import 'data_summary_widget.dart';
import 'flow_chart_widget.dart';

class CenterWidgetTablet extends StatelessWidget {
  const CenterWidgetTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              child: SingleChildScrollView(
        child: Column(
          children: [
            SearchWidget(),
            SizedBox(
              height: 20,
            ),
            CenterListView(),
            LineChartSample2(),
            SizedBox(
              height: 20,
            ),
            ActivityLevelListView(),
            SizedBox(
              height: 20,
            ),
            const PieChartWidget(),
            Text(
              'Summary',
              style: AppStyles.style60016(context: context),
            ),
            const DataSummaryWidget(),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                'Scheduled',
                style: AppStyles.style60016(context: context),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 20),
              child: ScheduledListView(),
            ),
          ],
        ),
      ))),
    );
  }
}
