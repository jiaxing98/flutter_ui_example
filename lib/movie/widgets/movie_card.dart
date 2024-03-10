import 'package:flutter/material.dart';
import 'package:flutter_ui_example/movie/models/movie_model.dart';

class MovieCard extends StatelessWidget {
  final MovieModel movie;

  const MovieCard({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    const spacing = 4.0;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 10.0,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          children: [
            Expanded(child: _buildImage()),
            const SizedBox(height: spacing),
            _buildMovieName(),
            const SizedBox(height: spacing),
            _buildGenre(),
            const SizedBox(height: spacing),
            _buildRating(),
            const Text(
              '...',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Image.asset(
          movie.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildMovieName() {
    return Text(
      movie.movieName,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildGenre() {
    final genres = movie.genres;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        genres.length,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[600]!),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Text(
              genres[index],
              style: TextStyle(
                color: Colors.grey[600]!,
                fontSize: 12.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(movie.rating.toStringAsFixed(1)),
        const SizedBox(width: 10.0),
        ...List.generate(
          movie.stars,
          (index) => const Icon(
            Icons.star_rate,
            size: 18.0,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}
