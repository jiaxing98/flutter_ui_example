import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_example/movie/pages/movie_page_viewmodel.dart';
import 'package:flutter_ui_example/movie/widgets/movie_background.dart';
import 'package:flutter_ui_example/movie/widgets/movie_card.dart';
import 'package:flutter_ui_example/movie/widgets/purchase_button.dart';
import 'package:provider/provider.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: const Icon(Icons.close),
      actions: [
        const Icon(Icons.person_outlined),
        const SizedBox(width: 15.0),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      children: [
        const MovieBackground(),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Consumer<MoviePageVM>(
                builder: (context, value, child) => CarouselSlider(
                  items: value.movies.map((e) => MovieCard(movie: e)).toList(),
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    viewportFraction: 0.75,
                    height: MediaQuery.of(context).size.height * 0.7,
                    enlargeCenterPage: true,
                    onPageChanged: (index, _) => value.controller.animateToPage(
                      index,
                      duration: const Duration(seconds: 1),
                      curve: Curves.ease,
                    ),
                  ),
                ),
              ),
              const PurchaseButton(),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ],
    );
  }
}
