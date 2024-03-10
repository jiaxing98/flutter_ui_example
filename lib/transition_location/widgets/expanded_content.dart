import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/constants/hero_tag.dart';
import 'package:flutter_ui_example/transition_location/models/location_model.dart';
import 'package:flutter_ui_example/transition_location/pages/transition_location_page_viewmodel.dart';
import 'package:flutter_ui_example/transition_location/widgets/material_hero.dart';
import 'package:flutter_ui_example/transition_location/widgets/star_rating.dart';
import 'package:provider/provider.dart';

class ExpandedContent extends StatelessWidget {
  final LocationModel location;

  const ExpandedContent({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MaterialHero(
            tag: HeroTag.addressLine1(location),
            child: Text(location.addressLine1),
          ),
          const SizedBox(height: 8.0),
          _buildRating(),
          const SizedBox(height: 12.0),
          _buildReview(),
        ],
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MaterialHero(
          tag: HeroTag.addressLine2(location),
          child: Text(
            location.addressLine2,
            style: const TextStyle(color: Colors.black45),
          ),
        ),
        MaterialHero(
          tag: HeroTag.stars(location),
          child: StarRating(count: location.starRating),
        ),
      ],
    );
  }

  Widget _buildReview() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: location.reviews
          .map(
            (e) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Consumer<TransitionLocationPageVM>(
                builder: (context, value, child) => MaterialHero(
                  tag: HeroTag.avatar(e, value.locations.indexOf(location)),
                  child: CircleAvatar(
                    radius: 16.0,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage(e.urlImage),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
