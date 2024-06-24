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
          child: SingleChildScrollView(
        child: Column(
          children: [
Container(
  margin: EdgeInsets.symmetric(horizontal: 15),
  child:  SearchWidget(),
)      ,      const SizedBox(
              height: 20,
            ),
        Container(  margin: EdgeInsets.symmetric(horizontal: 15),

          child:  CenterListView(),),
          Container(
            margin: EdgeInsets.only(top: 15, left: 15, right: 15),

            child:  LineChartWidget(),),
            const SizedBox(
              height: 20,
            ),
    Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),

      child:  const ActivityLevelListView(count: 3,),),
            const SizedBox(
              height: 30,
            ),

  const PieChartWidget(),
            Text(
              'Summary',
              style: AppStyles.style60016(context: context),
            ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),

          child:  const DataSummaryWidget(),),
            Container(
              margin: const EdgeInsets.only( left: 18),
              alignment: Alignment.centerLeft,
              child: Text(
                'Scheduled',
                style: AppStyles.style60016(context: context),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: const ScheduledListView(),
            ),
          ],
        ),
      )),
    );
  }
}
