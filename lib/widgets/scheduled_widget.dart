import 'package:blackdash_board/core/Utils/colors.dart';
import 'package:blackdash_board/core/Utils/font_Styles.dart';
import 'package:flutter/material.dart';
import '../Data/scheduled_data.dart';
import '../Models/scheduled_model.dart';

class ScheduledWidget extends StatelessWidget {
  final ScheduledModel data ;
  const ScheduledWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  const EdgeInsets.only(top: 10, right: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration:  BoxDecoration(
        color: Colors.black,
borderRadius: BorderRadius.circular(8),

      ),
      child:Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
Text(data.name, style:  AppStyles.style60014(context: context),textAlign: TextAlign.left,),
              Text(data.date, style:  AppStyles.style60014(context: context, color: Color(AppColors.grayText)),),

            ],
          ), 

        ],
      ) ,
    );
  }
}
