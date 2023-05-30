import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/features/presentation/page/homepage/homepagebloc/home_page_bloc.dart';

import 'features/presentation/page/homepage/home_page.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(866.3, 411.4),
      builder: (context, child) => MaterialApp(
        themeMode: ThemeMode.system,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (BuildContext context) => HomePageBloc(),
          child: HomePage(),
        ),
      ),
    );
  }
}
