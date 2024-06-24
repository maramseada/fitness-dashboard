import 'package:blackdash_board/core/Utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(8)
      ,    boxShadow: [
      BoxShadow(
      color: Colors.black.withOpacity(0.2), // Shadow color
      spreadRadius: 5, // How much the shadow should spread
      blurRadius: 10, // How soft the shadow should be
      offset: const Offset(3, 3), // Changes position of shadow
    ),
    ],  ),
      child: const TextField(

        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          border: InputBorder.none, // Remove the inner border to avoid conflict with outer border

        ),
      ),
    );
  }
}
