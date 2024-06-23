import 'package:flutter/cupertino.dart';

import 'activity_level_item.dart';

class ActivityLevelListView extends StatelessWidget {
  const ActivityLevelListView({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Row(
        children: [
          Expanded(child: PieChartWidget()),


        ],
      ),
    );
  }
}
