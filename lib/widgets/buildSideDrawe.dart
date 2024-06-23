import 'package:blackdash_board/core/Utils/colors.dart';
import 'package:blackdash_board/core/Utils/font_Styles.dart';
import 'package:blackdash_board/core/Utils/font_size.dart';
import 'package:flutter/material.dart';

import '../Models/drawer_item.dart';
class BuildSideDrawer extends StatefulWidget {

  final DrawerItemModel data;
  final bool isSelected;
  const BuildSideDrawer({super.key,required this.data, required this.isSelected});

  @override
  State<BuildSideDrawer> createState() => _BuildSideDrawerState();
}

class _BuildSideDrawerState extends State<BuildSideDrawer> {
  @override
  Widget build(BuildContext context) {

    return

   Container(

        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: widget.isSelected? Color(AppColors.mainColor):Color(AppColors.secondaryColor),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 5, // How much the shadow should spread
              blurRadius: 10, // How soft the shadow should be
              offset: const Offset(3, 3), // Changes position of shadow
            ),
          ],

        ),
        child: Row(
          children: [
            Icon(widget.data.icon),
            SizedBox(width: getResponsiveFontSize(context, fontSize: 10),),
            Text(widget.data.title, style: AppStyles.style40014(context: context),),
          ],
        ),
      )
   ;
  }
}

