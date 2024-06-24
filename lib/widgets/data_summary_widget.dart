import 'package:blackdash_board/core/Utils/colors.dart';
import 'package:blackdash_board/core/Utils/font_Styles.dart';
import 'package:flutter/cupertino.dart';
import '../Data/summary_data.dart';

class DataSummaryWidget extends StatelessWidget {
  const DataSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = SummaryData();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(AppColors.grayContainer),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                data.data[0].title,
                style: AppStyles.style60014(context: context, color: Color(AppColors.grayText)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data.data[0].subTitle,
                style: AppStyles.style60012(
                  context: context,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                data.data[1].title,
                style: AppStyles.style60014(context: context, color: Color(AppColors.grayText)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data.data[1].subTitle,
                style: AppStyles.style60012(
                  context: context,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                data.data[2].title,
                style: AppStyles.style60014(context: context, color: Color(AppColors.grayText)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data.data[2].subTitle,
                style: AppStyles.style60012(
                  context: context,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text(
                data.data[3].title,
                style: AppStyles.style60014(context: context, color: Color(AppColors.grayText)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                data.data[3].subTitle,
                style: AppStyles.style60012(
                  context: context,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
