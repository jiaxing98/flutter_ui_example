import 'package:flutter/material.dart';
import 'package:flutter_ui_example/movie/pages/movie_page.dart';
import 'package:flutter_ui_example/movie/pages/movie_page_viewmodel.dart';
import 'package:provider/provider.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MoviePageVM(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MoviePage(),
      ),
    );
  }
}
