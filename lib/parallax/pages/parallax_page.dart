import 'package:flutter/material.dart';
import 'package:flutter_ui_example/parallax/constants/images.dart';
import 'package:flutter_ui_example/parallax/pages/parallax_page_viewmodel.dart';
import 'package:flutter_ui_example/parallax/widgets/artist_description.dart';
import 'package:flutter_ui_example/parallax/widgets/highlight_paintings.dart';
import 'package:provider/provider.dart';

class ParallaxPage extends StatelessWidget {
  const ParallaxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ParallaxImages.bgParallax),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const ArtistDescription(),
                Consumer<ParallaxPageVM>(
                  builder: (context, value, child) => HighlightPaintings(
                    paintings: value.paintings,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
