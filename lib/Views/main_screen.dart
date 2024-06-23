import 'package:blackdash_board/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/center_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            const Expanded(
              flex: 3,
              child: SizedBox(
                child: CustomDrawer(),
              )
            ),
            const Expanded(
              flex: 8,
              child: SizedBox(
                child:
                CenterWidget(),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
