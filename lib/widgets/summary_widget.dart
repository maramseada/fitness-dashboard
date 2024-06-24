import 'package:blackdash_board/core/Utils/font_Styles.dart';
import 'package:blackdash_board/core/Utils/font_size.dart';
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
          child: Container(
            margin: EdgeInsets.symmetric(horizontal:
            getResponsiveFontSize(context, fontSize: 15)),
            child: Column(
              children: [
            Container(
            margin:  EdgeInsets.only(top: getResponsiveFontSize(context, fontSize: 30)),

          child:      const  PieChartWidget(),),
                Text('Summary', style: AppStyles.style60016(context: context),),
            Container(
              margin:  EdgeInsets.only(top: getResponsiveFontSize(context, fontSize: 15)),

              child:      const DataSummaryWidget(),),
                Container(
                  margin:  EdgeInsets.only( top: getResponsiveFontSize(context,
                      fontSize: 20)),

                  alignment: Alignment.centerLeft,
                  child:               Text('Scheduled', style: AppStyles.style60016(context: context),),

                ),
                Container(
                  margin: const EdgeInsets.only( right: 10, top: 10, bottom: 20),
                  child: const ScheduledListView(),),
              ],
            ),
          )
        ),
      ),
    );
  }
}
