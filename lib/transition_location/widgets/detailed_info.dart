import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/constants/hero_tag.dart';
import 'package:flutter_ui_example/transition_location/models/location_model.dart';
import 'package:flutter_ui_example/transition_location/widgets/material_hero.dart';
import 'package:flutter_ui_example/transition_location/widgets/star_rating.dart';

class DetailedInfo extends StatelessWidget {
  final LocationModel location;

  const DetailedInfo({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaterialHero(
            tag: HeroTag.addressLine1(location),
            child: Text(location.addressLine1),
          ),
          const SizedBox(height: 8.0),
          MaterialHero(
            tag: HeroTag.addressLine2(location),
            child: Text(location.addressLine2),
          ),
          const SizedBox(height: 8.0),
          MaterialHero(
            tag: HeroTag.stars(location),
            child: StarRating(count: location.starRating),
          ),
        ],
      ),
    );
  }
}
