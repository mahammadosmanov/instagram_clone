import 'package:flutter/material.dart';

class PostIndicator extends StatefulWidget {
  PostIndicator({
    Key? key,
    required this.count,
    required this.pageController,
  }) : super(key: key);
  final int count;
  final PageController pageController;
  final ScrollController scrollController = ScrollController();

  @override
  State<PostIndicator> createState() => _PostIndicatorState();
}

class _PostIndicatorState extends State<PostIndicator> {
  late AnimationController animationController;
  double offset = 0;

  void animateIndicator(bool toRight) async {
    if (toRight) {
      offset = offset + 1;
    } else {
      offset = offset - 1;
    }
    widget.scrollController.animateTo(
      offset * 10,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    await Future.delayed(
      const Duration(milliseconds: 50),
    ); //TODO temporary fix
  }

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      setState(() {});
    });
    widget.pageController.addListener(() {
      setState(() {});
      if (widget.pageController.page! > offset + 5.9 &&
          offset != widget.count) {
        animateIndicator(true);
      } else if (widget.pageController.page! < offset - 0.9 && offset != 0) {
        animateIndicator(false);
      }
    });
  }

  @override
  void didUpdateWidget(covariant PostIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    widget.scrollController.addListener(() {
      setState(() {});
    });
    widget.pageController.addListener(() {
      setState(() {});

      if (widget.pageController.page! > offset + 5.5 &&
          offset != widget.count) {
        animateIndicator(true);
      } else if (widget.pageController.page! < offset - 0.5 && offset != 0) {
        animateIndicator(false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 10,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        controller: widget.scrollController,
        itemCount: widget.count,
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              //TODO add animated size
              width: 6, //TODO check if offset
              height: 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ((widget.pageController.page! - index).abs() < 0.5)
                    ? Colors.blue
                    : Colors.grey,
              ),
            ),
          );
        },
      ),
    );
  }
}
