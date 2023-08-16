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
  double offset = 0;
  double width = 0;
  double height = 0;
  int scrollingIndex = 0;
  int lastIndex = 0;
  void animateIndicator(bool toRight) async {
    if (toRight) {
      offset = offset + 1;
    } else {
      offset = offset - 1;
    }
    widget.scrollController.animateTo(
      offset * 10,
      duration: const Duration(milliseconds: 80),
      curve: Curves.easeInOut,
    );
    await Future.delayed(
      const Duration(milliseconds: 50),
    ); //TODO temporary fix
  }

  double calculateContainerSize(index) {
    // if (offset != 0 && offset != 1) {} dechauvell
    //   if (offset == widget.count - 7) {
    //     if (index == offset) {
    //       return 2;
    //     } else if (index == offset + 1) {
    //       return 4;
    //     } else {
    //       return 6;
    //     }
    //   } else if (offset == widget.count - 8) {
    //     if (index == offset || index == offset + 6) {
    //       return 2;
    //     } else if (index == offset + 1 || index == offset + 5) {
    //       return 4;
    //     } else {
    //       return 6;
    //     }
    //   } else if (offset == 0) {
    //     if (index == offset + 6) {
    //       return 2;
    //     } else if (index == offset + 5) {
    //       return 4;
    //     } else {
    //       return 6;
    //     }
    //   } else if (offset == 1) {
    //     if (index == offset + 6) {
    //       return 2;
    //     } else if (index == offset || index == offset + 5) {
    //       return 4;
    //     } else {
    //       return 6;
    //     }
    //   } else {
    //     if (index == offset || index == offset + 6) {
    //       return 2;
    //     } else if (index == offset + 1 || index == offset + 5) {
    //       return 4;
    //     } else {
    //       return 6;
    //     }
    //   }
    // }

    if (index == offset && offset >= 2) {
      return 2;
    } else if (index == offset && offset >= 1) {
      return 4;
    } else if (index == offset + 1 && offset >= 2) {
      return 4;
    } else if (index == offset + 5 && offset != widget.count - 7) {
      return 4;
    } else if (index == offset + 6 && offset != widget.count - 7) {
      return 2;
    } else if (index == offset + 6 && offset == widget.count - 7) {
      return 4;
    } else if (index == widget.count - 1 && scrollingIndex == 1) {
      lastIndex = 1;
      return lastIndex == 1 ? 6 : 4;
    } else if (index == widget.count - 1 && scrollingIndex == 0) {
      lastIndex = 0;
      return lastIndex == 0 ? 4 : 4;
    }
    return 6;
  } //TODO fix indicator

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(() {
      setState(() {});
    });
    widget.pageController.addListener(
      () {
        print(scrollingIndex);
        print(offset);
        print(widget.pageController.page);
        print(lastIndex);
        setState(
          () {
            if (widget.pageController.page! > widget.count - 6) {
              scrollingIndex = 1;
            } else if (widget.pageController.page! <= widget.count - 6) {
              scrollingIndex = 0;
            }
            if (widget.pageController.page! > offset + 4.5 &&
                offset < widget.count - 7) {
              animateIndicator(true);
            } else if (widget.pageController.page! < offset + 1.5 &&
                offset != 0) {
              animateIndicator(false);
            }
          },
        );
      },
    );
  }

  @override
  void didUpdateWidget(covariant PostIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    widget.scrollController.addListener(() {
      setState(() {});
    });
    widget.pageController.addListener(() {
      print(scrollingIndex);
      print(offset);
      print(widget.pageController.page);
      setState(() {
        if (widget.pageController.page == widget.count - 1) {
          scrollingIndex = 1;
        } else if (widget.pageController.page == widget.count - 6) {
          scrollingIndex = 0;
        }
        if (widget.pageController.page! > offset + 4.5 &&
            offset < widget.count - 7) {
          animateIndicator(true);
        } else if (widget.pageController.page! < offset + 1.5 && offset != 0) {
          animateIndicator(false);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
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
              child: Stack(
                children: [
                  Container(
                    width: 6,
                    height: 6,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                  Center(
                    child: Container(
                      //TODO add animated size
                      width:
                          calculateContainerSize(index), //TODO check if offset
                      height: calculateContainerSize(index),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            ((widget.pageController.page! - index).abs() < 0.5)
                                ? Colors.blue
                                : Colors.grey,
                      ),
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }
}
