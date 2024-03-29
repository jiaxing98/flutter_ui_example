import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/constants/hero_tag.dart';
import 'package:flutter_ui_example/transition_location/models/location_model.dart';
import 'package:flutter_ui_example/transition_location/widgets/lat_long.dart';
import 'package:flutter_ui_example/transition_location/widgets/material_hero.dart';

class LocationImage extends StatefulWidget {
  final LocationModel location;

  const LocationImage({
    super.key,
    required this.location,
  });

  @override
  State<LocationImage> createState() => _LocationImageState();
}

class _LocationImageState extends State<LocationImage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const double radius = 8.0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      width: size.width * 0.8,
      height: size.height * 0.5,
      child: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 2.0,
              spreadRadius: 1.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: Stack(
          children: [
            SizedBox.expand(
              child: MaterialHero(
                tag: HeroTag.image(widget.location.urlImage),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(radius)),
                  child: Image.asset(
                    widget.location.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTopText(),
                  LatLong(location: widget.location),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopText() {
    return Text(
      widget.location.name,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    );
  }
}
