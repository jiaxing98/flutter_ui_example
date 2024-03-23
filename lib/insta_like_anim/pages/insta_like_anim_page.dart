import 'package:flutter/material.dart';
import 'package:flutter_ui_example/insta_like_anim/widgets/post.dart';

class InstaLikeAnimPage extends StatelessWidget {
  const InstaLikeAnimPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Post(),
      ),
    );
  }
}
