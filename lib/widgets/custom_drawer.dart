import 'package:blackdash_board/widgets/buildSideDrawe.dart';
import 'package:flutter/cupertino.dart';

import '../Data/drawer_data.dart';

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

    return Container(
      padding: const EdgeInsets.only(left: 15,right: 15, top: 20),
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
    );
  }
}
