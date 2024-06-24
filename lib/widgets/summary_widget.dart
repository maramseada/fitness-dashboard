import 'package:blackdash_board/core/Utils/font_Styles.dart';
import 'package:blackdash_board/widgets/pie_chart_widget.dart';
import 'package:flutter/material.dart';
import 'Sceduled_list_view.dart';
import 'data_summary_widget.dart';


class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PieChartWidget(),
              Text('Summary', style: AppStyles.style60016(context: context),),
              const DataSummaryWidget(),
Container(
  margin: const EdgeInsets.only(top: 10, left :10),

  alignment: Alignment.centerLeft,
  child:               Text('Scheduled', style: AppStyles.style60016(context: context),),

),
               Container(
                margin: EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 20),
                child: ScheduledListView(),),
            ],
          ),
        ),
      ),
    );
  }
}
