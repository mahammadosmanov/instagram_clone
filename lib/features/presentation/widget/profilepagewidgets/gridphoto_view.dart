import 'package:flutter/material.dart';

class GridPhotoView extends StatefulWidget {
  const GridPhotoView({super.key, required this.dataImage});
  final List dataImage;

  @override
  State<GridPhotoView> createState() => _GridPhotoViewState();
}

class _GridPhotoViewState extends State<GridPhotoView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: widget.dataImage.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {}, //TODO add method for opening posts page
          child: Image.asset(widget.dataImage[index]),
        );
      },
    );
  }
}
