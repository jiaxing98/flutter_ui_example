import 'package:flutter/material.dart';
import 'package:flutter_ui_example/movie/models/movie_model.dart';
import 'package:flutter_ui_example/movie/pages/movie_page_viewmodel.dart';
import 'package:provider/provider.dart';

class MovieBackground extends StatelessWidget {
  const MovieBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MoviePageVM>(
      builder: (context, value, child) => PageView.builder(
        reverse: true,
        physics: const NeverScrollableScrollPhysics(),
        controller: value.controller,
        itemCount: value.movies.length,
        itemBuilder: (context, index) => _buildBackground(value.movies[index]),
      ),
    );
  }

  Widget _buildBackground(MovieModel movie) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            movie.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.15, 0.75],
              colors: [
                Colors.white.withOpacity(0.0001),
                Colors.white,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
