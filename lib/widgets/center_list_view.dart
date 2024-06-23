import 'package:flutter/cupertino.dart';

import '../Data/center_data.dart';
import 'centere_listview_item.dart';
class CenterListView extends StatelessWidget {
  const CenterListView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = CenterListItem();

    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Row(
        children: [
          Expanded(child: CenterListViewItem(data: data.drawerItem[0])),
          const SizedBox(width: 15),
          Expanded(child: CenterListViewItem(data: data.drawerItem[1])),
          const SizedBox(width: 15),
          Expanded(child: CenterListViewItem(data: data.drawerItem[2])),
          const SizedBox(width: 15),
          Expanded(child: CenterListViewItem(data: data.drawerItem[3])),
        ],
      ),
    );
  }
}
