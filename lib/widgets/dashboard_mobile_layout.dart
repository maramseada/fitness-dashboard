import 'package:blackdash_board/core/Utils/colors.dart';
import 'package:blackdash_board/core/Utils/font_size.dart';
import 'package:blackdash_board/widgets/custom_drawer.dart';
import 'package:blackdash_board/widgets/pie_chart_widget.dart';
import 'package:blackdash_board/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import '../core/Utils/font_Styles.dart';
import 'Sceduled_list_view.dart';
import 'activity_levels_listview.dart';
import 'center_list_view.dart';
import 'data_summary_widget.dart';
import 'flow_chart_widget.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(AppColors.mainColor),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, size: 35,),

            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer:  SizedBox(      width: size.width * 0.7,
      child: const CustomDrawer(),),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: getResponsiveFontSize(context, fontSize: 15)),
          child: const SearchWidget(),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: getResponsiveFontSize(context, fontSize: 15)),
          child: const CenterListView(),
        ),
        Container(
          margin: const EdgeInsets.all(15),
          child: const LineChartWidget(),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: getResponsiveFontSize(context, fontSize: 15)),
          child: const ActivityLevelListView(
            count: 2,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const PieChartWidget(),
        Text(
          'Summary',
          style: AppStyles.style60016(context: context),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: const DataSummaryWidget(),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15),
          alignment: Alignment.centerLeft,
          child: Text(
            'Scheduled',
            style: AppStyles.style60016(context: context),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 20),
          child: const ScheduledListView(),
        ),
      ]))),
    );
  }
}
