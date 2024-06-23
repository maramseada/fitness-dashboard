import 'package:flutter/material.dart';

import '../Models/center_list_item.dart';

class CenterListItem{


  final drawerItem = <CenterListItemModel>[
    CenterListItemModel(id: 1, title: '305', icon: 'assets/icons/burn.png', subTitle: 'Calories Burnt'),
    CenterListItemModel(id: 2, title: '10,983', icon: 'assets/icons/steps.png', subTitle: 'Steps'),
    CenterListItemModel(id: 3, title: '7KM', icon: 'assets/icons/distance.png', subTitle: 'Distance'),
    CenterListItemModel(id: 4, title: '7H48M', icon: 'assets/icons/sleep.png', subTitle: 'Sleep'),
  ];
}