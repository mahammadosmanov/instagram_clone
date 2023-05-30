import 'package:flutter/material.dart';

import '../../../core/constants/assets_constants.dart';

enum ProfileCircleType {
  onPost,
  onProfile,
  onNavigationBar,
}

class ProfileCircle extends StatelessWidget {
  const ProfileCircle({required this.profileCircleType, Key? key})
      : super(key: key);
  final ProfileCircleType profileCircleType;

  @override
  Widget build(BuildContext context) {
    if (profileCircleType == ProfileCircleType.onPost) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Column(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              child: InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    Image.asset(kPictureFrame),
                    Image.asset(kProfilePicture), //TODO Create Image asset name
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else if (profileCircleType == ProfileCircleType.onProfile) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              child: InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    Image.asset(kPictureFrame),
                    Image.asset(kProfilePicture), //TODO Create Image asset name
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
        child: Column(
          children: [
            Container(
              width: 26,
              height: 26,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
              child: InkWell(
                onTap: () {},
                child: Stack(
                  children: [
                    Image.asset(kPictureFrame),
                    Image.asset(kProfilePicture), //TODO Create Image asset name
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
