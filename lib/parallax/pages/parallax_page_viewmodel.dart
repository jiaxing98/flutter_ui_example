import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_example/parallax/constants/data.dart';

class ParallaxPageVM extends ChangeNotifier {
  final List<Map> paintings = ParallaxData.paintings;
}
