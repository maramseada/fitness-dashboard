import 'package:blackdash_board/widgets/buildSideDrawe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Data/drawer_data.dart';
import '../core/Utils/font_size.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

int activeIndex = 0;

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    final data = DrawerItemsData();

    return Scaffold(
      body: Container(
        padding:  EdgeInsets.only(left: getResponsiveFontSize(context, fontSize: 15),right: getResponsiveFontSize(context, fontSize: 15), top: getResponsiveFontSize(context, fontSize: 20),),
        child: ListView.builder(
          itemCount: data.drawerItem.length,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: BuildSideDrawer(
              data: data.drawerItem[index],
              isSelected: activeIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
