import 'package:flutter/material.dart';
import 'package:flutter_ui_example/parallax/pages/parallax_page.dart';
import 'package:flutter_ui_example/parallax/pages/parallax_page_viewmodel.dart';
import 'package:provider/provider.dart';

class ParallaxApp extends StatelessWidget {
  const ParallaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ParallaxPageVM(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ParallaxPage(),
      ),
    );
  }
}
