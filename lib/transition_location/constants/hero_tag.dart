import 'package:flutter_ui_example/transition_location/models/location_model.dart';
import 'package:flutter_ui_example/transition_location/models/review_model.dart';

class HeroTag {
  static String image(String urlImage) => urlImage;

  static String addressLine1(LocationModel location) =>
      location.name + location.addressLine1;

  static String addressLine2(LocationModel location) =>
      location.name + location.addressLine2;

  static String stars(LocationModel location) =>
      location.name + location.starRating.toString();

  static String avatar(ReviewModel review, int position) =>
      review.urlImage + position.toString();
}
