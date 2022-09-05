import 'package:flutter/material.dart';

class AutoHorizontalScroller extends StatefulWidget {
  const AutoHorizontalScroller(
      {Key? key,
      required this.child,
      this.multiplier = 10,
      this.pause = const Duration(seconds: 1)})
      : super(key: key);

  final Widget child;
  final double multiplier;
  final Duration pause;

  @override
  State<AutoHorizontalScroller> createState() => _AutoHorizontalScrollerState();
}

class _AutoHorizontalScrollerState extends State<AutoHorizontalScroller> {
  final controller = ScrollController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() async {
      if (controller.position.pixels == controller.position.maxScrollExtent) {
        await Future.delayed(widget.pause);
        controller.jumpTo(controller.position.minScrollExtent);
        await Future.delayed(widget.pause);
        scroll();
      }
    });
    WidgetsBinding.instance.addPostFrameCallback((_) => scroll());
  }

  void scroll() {
    controller.animateTo(controller.position.maxScrollExtent,
        duration: Duration(
            milliseconds:
                (controller.position.maxScrollExtent * widget.multiplier)
                    .ceil()),
        curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        scrollDirection: Axis.horizontal,
        child: widget.child);
  }
}
