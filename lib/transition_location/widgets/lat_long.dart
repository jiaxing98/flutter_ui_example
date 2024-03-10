import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/models/location_model.dart';

class LatLong extends StatelessWidget {
  final LocationModel location;

  const LatLong({
    super.key,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          location.latitude,
          style: const TextStyle(color: Colors.white70),
        ),
        const Icon(
          Icons.location_on,
          color: Colors.white70,
        ),
        Text(
          location.longitude,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
