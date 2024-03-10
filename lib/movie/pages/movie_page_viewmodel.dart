import 'package:flutter/material.dart';
import 'package:flutter_ui_example/movie/constants/data.dart';
import 'package:flutter_ui_example/movie/models/movie_model.dart';

class MoviePageVM extends ChangeNotifier {
  final List<MovieModel> movies = MovieData.movies;
  final controller = PageController();
}
