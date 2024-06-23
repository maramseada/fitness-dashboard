import 'package:blackdash_board/widgets/search_widget.dart';
import 'package:flutter/material.dart';

import 'activity_levels_listview.dart';
import 'center_list_view.dart';
import 'flow_chart_widget.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: SafeArea(child:Container(

  child:  SingleChildScrollView(
    child: Column(
      children: [
        SearchWidget(),
        SizedBox(height: 20,),
        CenterListView(),
        LineChartSample2(),
        ActivityLevelListView()
      ],
    ),
  )
)),
    );
  }
}
