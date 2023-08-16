import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/features/data/datasource/mock_data.dart';
import 'package:instagram_clone/features/domain/entity/post_entity.dart';
import 'package:instagram_clone/features/presentation/page/homepage/homepagebloc/home_page_bloc.dart';
import 'package:instagram_clone/features/presentation/widget/bottom_bar.dart';
import 'package:instagram_clone/features/presentation/widget/homepagewidgets/homepage_storybar.dart';
import 'package:instagram_clone/features/presentation/widget/homepagewidgets/homepage_timeline.dart';

import '../../widget/homepagewidgets/homepage_appbar.dart';

class ErrorPage extends StatelessWidget {
  ErrorPage({Key? key}) : super(key: key);
  final PostEntity postEntity = postEntityRohtolos;

  @override
  Widget build(BuildContext context) {
    // final HomePageBloc homePageBloc = BlocProvider.of<HomePageBloc>(context);
    return BlocBuilder<HomePageBloc, HomePageState>(builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              const HomePageAppBar(
                appBarPage: AppBarPage.homePage,
              ),
              StoryBar(
                storyList: storyList,
              ),
              HomePageTimeline(
                postEntity:
                    postEntityRohtolos, //TODO come up with backend for calling data
              ),
              const BottomBar(),
            ],
          ),
        ),
      );
    });
  }
}
