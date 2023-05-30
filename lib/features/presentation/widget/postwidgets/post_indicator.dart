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

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      setState(() {});
    });
    widget.pageController.addListener(() {
      setState(() {
        widget.scrollController.animateTo(offset,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut);
      });
    });
  }

  void calculate() {
    setState(() {
      if (widget.pageController.page! >= 6.5 ) {
        for (widget.pageController.page;widget.pageController.page! <= widget.count ; offset++ ) {
        }else if (1 <= widget.pageController.page!) {
        }
    }

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 10,
      child: ListView.builder(
        controller: widget.scrollController,
        itemCount: widget.count,
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              width: 6,
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

