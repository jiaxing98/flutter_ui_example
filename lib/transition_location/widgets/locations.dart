import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/pages/transition_location_page_viewmodel.dart';
import 'package:flutter_ui_example/transition_location/widgets/location.dart';
import 'package:provider/provider.dart';

class Locations extends StatefulWidget {
  const Locations({super.key});

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  final pageController = PageController(viewportFraction: 0.8);
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TransitionLocationPageVM(),
      child: Consumer<TransitionLocationPageVM>(
        builder: (context, value, child) => Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: value.locations.length,
                itemBuilder: (context, i) => Location(
                  location: value.locations[i],
                ),
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
              ),
            ),
            Text(
              '${pageIndex + 1}/${value.locations.length}',
              style: const TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }
}
