import 'package:blackdash_board/widgets/scheduled_widget.dart';
import 'package:flutter/cupertino.dart';

import '../Data/scheduled_data.dart';

class ScheduledListView extends StatelessWidget {
  const ScheduledListView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ScheduledData();
    return ListView.builder(
      physics: const ScrollPhysics(),
       shrinkWrap: true,
       itemCount: data.data.length, 
        itemBuilder: (context, index)=> ScheduledWidget(data: data.data[index],));
  }
}
