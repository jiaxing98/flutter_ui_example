import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/constants/hero_tag.dart';
import 'package:flutter_ui_example/transition_location/models/location_model.dart';
import 'package:flutter_ui_example/transition_location/widgets/detailed_info.dart';
import 'package:flutter_ui_example/transition_location/widgets/lat_long.dart';
import 'package:flutter_ui_example/transition_location/widgets/material_hero.dart';
import 'package:flutter_ui_example/transition_location/widgets/reviews.dart';

class DetailPage extends StatefulWidget {
  final LocationModel location;
  final Animation<double> animation;

  const DetailPage({
    super.key,
    required this.location,
    required this.animation,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      title: const Text('INTERESTS'),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: Navigator.of(context).pop,
        ),
        const SizedBox(width: 10.0),
      ],
      leading: const Icon(Icons.search_outlined),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox.expand(
                child: MaterialHero(
                  tag: HeroTag.image(widget.location.urlImage),
                  child: Image.asset(
                    widget.location.urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LatLong(location: widget.location),
              ),
            ],
          ),
        ),
        DetailedInfo(location: widget.location),
        Expanded(
          flex: 5,
          child: Reviews(
            location: widget.location,
            animation: widget.animation,
          ),
        ),
      ],
    );
  }
}
