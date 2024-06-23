import 'package:blackdash_board/core/Utils/font_Styles.dart';
import 'package:blackdash_board/core/Utils/font_size.dart';
import 'package:flutter/material.dart';

import '../Models/center_list_item.dart';
import '../core/Utils/colors.dart';

class CenterListViewItem extends StatelessWidget {
  final CenterListItemModel data;
  const CenterListViewItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: getResponsiveFontSize(context, fontSize: 40)),
      decoration: BoxDecoration(
        color: Color(AppColors.secondaryColor),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Image.asset(data.icon, height: 40,),
          const SizedBox(height: 8,),
          Text(data.title, style: AppStyles.style60016(context: context),),
          const SizedBox(height: 3,),
          Text(data.subTitle, style: AppStyles.style40012(context: context, color: Color(AppColors.grayText)),),
        ],
      ),
    );
  }
}