import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  final bool isAnimating;
  final Duration duration;
  final Widget child;
  final bool isAlwaysAnimate;
  final void Function()? onEnd;

  const Heart({
    super.key,
    required this.isAnimating,
    required this.child,
    this.duration = const Duration(milliseconds: 200),
    this.isAlwaysAnimate = false,
    this.onEnd,
  });

  @override
  State<Heart> createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scale;

  @override
  void initState() {
    super.initState();

    final halfDuration = widget.duration.inMilliseconds ~/ 2;
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: halfDuration),
    );

    scale = Tween<double>(begin: 1, end: 1.2).animate(controller);
  }

  @override
  void didUpdateWidget(covariant Heart oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAnimating != oldWidget.isAnimating) {
      doAnimation();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scale,
      child: widget.child,
    );
  }

  Future doAnimation() async {
    if (!widget.isAnimating && !widget.isAlwaysAnimate) return;

    await controller.forward();
    await controller.reverse();
    widget.onEnd?.call();
  }
}
