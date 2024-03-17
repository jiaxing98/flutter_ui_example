import 'package:flutter/material.dart';

class CollapseToolbarPage extends StatelessWidget {
  const CollapseToolbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (ctx, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            snap: true,
            title: Text('Hide On Scroll'),
            centerTitle: true,
            foregroundColor: Colors.white,
            backgroundColor: Theme.of(context).primaryColor,
          ),
        ],
        body: SafeArea(
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (ctx, index) => ListTile(
              title: Text(
                'Item ${index + 1}',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
