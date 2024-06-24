import 'package:blackdash_board/core/Utils/font_size.dart';
import 'package:blackdash_board/core/Utils/font_size.dart';
import 'package:blackdash_board/core/Utils/font_size.dart';
import 'package:flutter/cupertino.dart';

import '../Data/center_data.dart';
import 'centere_listview_item.dart';
class CenterListView extends StatelessWidget {
  const CenterListView({super.key});

  @override
  Widget build(BuildContext context) {
    final data = CenterListItem();

    return Row(
      children: [
        Expanded(child: CenterListViewItem(data: data.drawerItem[0])),
         SizedBox(width: getResponsiveFontSize(context, fontSize: 15)),
        Expanded(child: CenterListViewItem(data: data.drawerItem[1])),
         SizedBox(width: getResponsiveFontSize(context, fontSize: 15)),
        Expanded(child: CenterListViewItem(data: data.drawerItem[2])),
         SizedBox(width: getResponsiveFontSize(context, fontSize: 15)),
        Expanded(child: CenterListViewItem(data: data.drawerItem[3])),
      ],
    );
  }
}
