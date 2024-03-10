import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/models/location_model.dart';
import 'package:flutter_ui_example/transition_location/pages/detail_page.dart';
import 'package:flutter_ui_example/transition_location/widgets/expanded_content.dart';
import 'package:flutter_ui_example/transition_location/widgets/location_image.dart';

class Location extends StatefulWidget {
  final LocationModel location;

  const Location({
    super.key,
    required this.location,
  });

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            bottom: isExpanded ? 40.0 : 100.0,
            width: isExpanded ? size.width * 0.78 : size.width * 0.7,
            height: isExpanded ? size.height * 0.6 : size.height * 0.5,
            duration: const Duration(milliseconds: 500),
            child: ExpandedContent(location: widget.location),
          ),
          AnimatedPositioned(
            bottom: isExpanded ? 150.0 : 100.0,
            duration: const Duration(milliseconds: 500),
            child: GestureDetector(
              onTap: onOpenDetailPage,
              onPanUpdate: onPanUpdate,
              child: LocationImage(location: widget.location),
            ),
          )
        ],
      ),
    );
  }

  void onOpenDetailPage() {
    if (!isExpanded) {
      setState(() => isExpanded = true);
      return;
    }

    Navigator.of(context).push(
      PageRouteBuilder(
          transitionDuration: const Duration(seconds: 1),
          reverseTransitionDuration: const Duration(seconds: 1),
          pageBuilder: (context, animation, secondaryAnimation) {
            final curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: const Interval(0, 0.5),
            );

            return FadeTransition(
              opacity: curvedAnimation,
              child: DetailPage(
                location: widget.location,
                animation: animation,
              ),
            );
          }),
    );
  }

  void onPanUpdate(DragUpdateDetails details) {
    setState(() {
      isExpanded = details.delta.dy < 0 ? true : false;
    });
  }
}
