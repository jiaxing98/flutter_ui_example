import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class ArtistDescription extends StatelessWidget {
  const ArtistDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30.0),
        const Text(
          'Vincent\nVan Gogh',
          style: TextStyle(
            color: Colors.white,
            fontSize: 50.0,
            letterSpacing: 2.0,
          ),
        ),
        const SizedBox(height: 10.0),
        const Text(
          '30 March 1853-29 July 1890',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 10.0),
        Text(
          lorem(
            paragraphs: 1,
            words: 30,
          ),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
