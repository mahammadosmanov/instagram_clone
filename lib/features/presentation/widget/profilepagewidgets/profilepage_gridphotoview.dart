import 'package:flutter/material.dart';

class GridPhotoView extends StatelessWidget {
  const GridPhotoView({super.key, required this.dataImage});
  final List dataImage;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      itemCount: dataImage.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return Image.asset(dataImage[index]);
      },
    );
  }
}
