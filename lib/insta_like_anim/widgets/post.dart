import 'package:flutter/material.dart';
import 'package:flutter_ui_example/insta_like_anim/widgets/heart.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  bool isLiked = false;
  bool isHeartAnimating = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          _buildImage(),
          _buildActions(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return GestureDetector(
      child: Stack(
        alignment: Alignment.center,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Image.network(
              'https://images.unsplash.com/photo-1505533321630-975218a5f66f',
              fit: BoxFit.cover,
            ),
          ),
          Opacity(
            opacity: isHeartAnimating ? 1 : 0,
            child: Heart(
              isAnimating: isHeartAnimating,
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 100.0,
              ),
              onEnd: () {
                setState(() {
                  isHeartAnimating = false;
                });
              },
            ),
          ),
        ],
      ),
      onDoubleTap: () {
        setState(() {
          isHeartAnimating = true;
          isLiked = true;
        });
      },
    );
  }

  Widget _buildActions() {
    final icon = isLiked ? Icons.favorite : Icons.favorite_outline;
    final color = isLiked ? Colors.red : Colors.white;

    return Container(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Heart(
            isAlwaysAnimate: true,
            isAnimating: isLiked,
            child: IconButton(
              icon: Icon(
                icon,
                color: color,
                size: 28.0,
              ),
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
