import 'package:flutter/cupertino.dart';
import '../Data/bar_graph_data.dart';
import 'activity_level_item.dart';

class ActivityLevelListView extends StatelessWidget {
  final  int count ;
  const  ActivityLevelListView({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    final barGraphData = BarGraphData();

    return GridView.builder(
        itemCount: barGraphData.data.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12.0,
          childAspectRatio: 5 / 4,
        ),
        itemBuilder: (context, index) {
          return ActivityLevelGraph(
            data: barGraphData.data[index],
          );
        });
  }
}
