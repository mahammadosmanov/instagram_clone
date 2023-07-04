import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HighLight extends StatelessWidget {
  const HighLight({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 86.h,
      child: ListView.builder(
        itemBuilder: (context, index) {}, //TODO build HighLight section
      ),
    );
  }
}
