import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/constants/data.dart';
import 'package:flutter_ui_example/transition_location/models/location_model.dart';

class TransitionLocationPageVM extends ChangeNotifier {
  final List<LocationModel> locations = TransitionLocationData.locations;
}
