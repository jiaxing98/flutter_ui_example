import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/constants/hero_tag.dart';
import 'package:flutter_ui_example/transition_location/models/location_model.dart';
import 'package:flutter_ui_example/transition_location/models/review_model.dart';
import 'package:flutter_ui_example/transition_location/pages/transition_location_page_viewmodel.dart';
import 'package:flutter_ui_example/transition_location/widgets/material_hero.dart';
import 'package:provider/provider.dart';

class Reviews extends StatelessWidget {
  final LocationModel location;
  final Animation<double> animation;

  const Reviews({
    super.key,
    required this.location,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: context.watch<TransitionLocationPageVM>(),
      child: ListView.separated(
        padding: const EdgeInsets.all(16.0),
        itemCount: location.reviews.length,
        separatorBuilder: (_, index) => const Divider(),
        itemBuilder: (_, index) => AnimatedBuilder(
          animation: animation,
          builder: (ctx, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: const Interval(0.2, 1, curve: Curves.easeInExpo),
            ),
            child: child,
          ),
          child: _buildReview(location.reviews[index]),
        ),
      ),
    );
  }

  Widget _buildReview(ReviewModel review) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Consumer<TransitionLocationPageVM>(
                builder: (context, value, child) => MaterialHero(
                  tag: HeroTag.avatar(
                    review,
                    value.locations.indexOf(location),
                  ),
                  child: CircleAvatar(
                    radius: 16.0,
                    backgroundColor: Colors.black12,
                    backgroundImage: AssetImage(review.urlImage),
                  ),
                ),
              ),
              Text(
                review.username,
                style: const TextStyle(fontSize: 17.0),
              ),
              const SizedBox(),
              Text(
                review.date,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
              const Icon(
                Icons.thumb_up_alt_outlined,
                size: 14.0,
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            review.description,
            style: const TextStyle(color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
