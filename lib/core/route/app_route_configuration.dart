import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/core/route/app_route_constants.dart';
import 'package:instagram_clone/features/presentation/page/profilepage/profile_page.dart';
import '../../features/presentation/page/errorpage/error_page.dart';
import '../../features/presentation/page/homepage/home_page.dart';
import '../../features/presentation/page/homepage/homepagebloc/home_page_bloc.dart';

class MyAppRouter {
  GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(
            child: BlocProvider(
              create: (BuildContext context) => HomePageBloc(),
              child: HomePage(),
            ),
          );
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.profileRouteName,
        path: '/profile',
        pageBuilder: (context, state) {
          return MaterialPage(child: ProfilePage());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(child: ErrorPage());
    },
  );
}
