import 'package:flutter/material.dart';
import 'package:instagram_clone/features/presentation/widget/profile_circle.dart';

import '../../../../core/constants/assets_constants.dart';

class HomePageBottomBar extends StatelessWidget {
  const HomePageBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        fixedColor: Colors.black,
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {},
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              kHomeIcon,
              width: 26,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              kReelsIcon,
              width: 20,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: ProfileCircle(
              profileCircleType: ProfileCircleType.onNavigationBar,
            ),
            label: '',
          ),
        ]);
  }
}
