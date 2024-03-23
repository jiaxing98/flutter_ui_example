import 'package:flutter/material.dart';
import 'package:flutter_ui_example/insta_like_anim/pages/insta_like_anim_page.dart';
import 'package:flutter_ui_example/insta_like_anim/pages/insta_like_anim_page_viewmodel.dart';
import 'package:provider/provider.dart';

class InstaLikeAnimApp extends StatelessWidget {
  const InstaLikeAnimApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => InstaLikeAnimPageVM(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const InstaLikeAnimPage(),
      ),
    );
  }
}
