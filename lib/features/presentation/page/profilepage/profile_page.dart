import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/features/data/datasource/mock_data.dart';
import 'package:instagram_clone/features/domain/entity/profile_entity.dart';
import 'package:instagram_clone/features/domain/entity/user_entity.dart';
import 'package:instagram_clone/features/presentation/widget/bottom_bar.dart';
import 'package:instagram_clone/features/presentation/widget/profilepagewidgets/profilepage_inf.dart';
import 'package:instagram_clone/features/presentation/widget/profilepagewidgets/profilepage_navigationbar.dart';
import 'package:instagram_clone/features/presentation/widget/profilepagewidgets/profilepage_profiledisplay.dart';
import '../../widget/profilepagewidgets/profilepage_profiledata.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final UserEntity userEntity = userEntityRohtolos;
  final ProfileEntity profileEntity = profileEntityRohtolos;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ProfilePageAppBar(profileName: userEntity.name),
                  const ProfilePageProfileData(),
                  SizedBox(
                    height: 6.h,
                  ),
                  ProfilePageInformation(
                    profileName: userEntity.name,
                    userBio: userEntity.userBio,
                  ),
                  ProfileDisplay(dataImage: profileEntity.imageAssetList),
                ],
              ),
            ),
            const BottomBar()
          ],
        ),
      ),
    );
  }
}
