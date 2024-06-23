import 'package:flutter/cupertino.dart';

import '../Data/bar_graph_data.dart';
import 'activity_level_item.dart';

class ActivityLevelListView extends StatelessWidget {
  const ActivityLevelListView({super.key});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();

    return Container(
        margin: const EdgeInsets.only(left:10, right: 20),
        child: GridView.builder(
            itemCount: barGraphData.data.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 12.0,
              childAspectRatio: 5 / 4,
            ),
            itemBuilder: (context, index) {
              return PieChartWidget(
                data: barGraphData.data[index],
              );
            }));
  }
}
