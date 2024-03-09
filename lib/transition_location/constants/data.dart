import 'package:flutter_ui_example/transition_location/constants/images.dart';
import 'package:flutter_ui_example/transition_location/models/location_model.dart';
import 'package:flutter_ui_example/transition_location/models/review_model.dart';

class TransitionLocationData {
  static const List<ReviewModel> allReviews = [
    ReviewModel(
      date: 'FEB 14th',
      username: 'Michael Scoffield',
      urlImage: TransitionLocationImages.imgUser1,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    ),
    ReviewModel(
      date: 'JAN 24th',
      username: 'Daniel Kraig',
      urlImage: TransitionLocationImages.imgUser2,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    ),
    ReviewModel(
      date: 'MAR 18th',
      username: 'Amanda Linn',
      urlImage: TransitionLocationImages.imgUser3,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    ),
    ReviewModel(
      date: 'AUG 15th',
      username: 'Kim Wexler',
      urlImage: TransitionLocationImages.imgUser4,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',
    ),
  ];

  static const List<LocationModel> locations = [
    LocationModel(
      name: 'ATCOASTAL',
      urlImage: TransitionLocationImages.imgSea1,
      addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
      addressLine2: 'NO. 791187',
      starRating: 4,
      latitude: 'NORTH LAT 24',
      longitude: 'EAST LNG 17',
      reviews: allReviews,
    ),
    LocationModel(
      name: 'SYRACUSE',
      urlImage: TransitionLocationImages.imgMountain1,
      addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
      addressLine2: 'NO. 11641',
      starRating: 4,
      latitude: 'SOUTH LAT 14',
      longitude: 'EAST LNG 27',
      reviews: allReviews,
    ),
    LocationModel(
      name: 'OCEANIC',
      urlImage: TransitionLocationImages.imgSea2,
      addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
      addressLine2: 'NO. 791187',
      starRating: 4,
      latitude: 'NORTH LAT 24',
      longitude: 'WEST LNG 08',
      reviews: allReviews,
    ),
    LocationModel(
      name: 'MOUNTAINOUS',
      urlImage: TransitionLocationImages.imgMountain2,
      addressLine1: 'La Cresenta-Montrose, CA91020 Glendale',
      addressLine2: 'NO. 791187',
      starRating: 4,
      latitude: 'SOUTH LAT 39',
      longitude: 'WEST LNG 41',
      reviews: allReviews,
    ),
  ];
}
