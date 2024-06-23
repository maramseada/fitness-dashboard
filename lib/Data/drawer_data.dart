import 'package:flutter/material.dart';

import '../Models/drawer_item.dart';

class DrawerItemsData{
  final drawerItem = <DrawerItemModel>[
    DrawerItemModel(id: 1, title: 'DashBoard', icon: Icons.home),
    DrawerItemModel(id: 2, title: 'Profile', icon: Icons.person),
    DrawerItemModel(id: 3, title: 'Excersice', icon: Icons.run_circle),
    DrawerItemModel(id: 4, title: 'Settings', icon: Icons.settings),
    DrawerItemModel(id: 5, title: 'History', icon: Icons.history),
    DrawerItemModel(id: 6, title: 'SignOut', icon: Icons.logout),
  ];

}