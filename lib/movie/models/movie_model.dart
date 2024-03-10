import 'package:flutter_ui_example/movie/models/actor_model.dart';

class MovieModel {
  final String movieName;
  final String imageUrl;
  final int stars;
  final List<String> genres;
  final List<ActorModel> cast;
  final double rating;
  final String director;
  final String description;

  const MovieModel({
    required this.stars,
    required this.imageUrl,
    required this.movieName,
    required this.genres,
    required this.cast,
    required this.rating,
    required this.director,
    required this.description,
  });
}
