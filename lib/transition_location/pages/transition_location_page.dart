import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/widgets/locations.dart';

class TransitionLocationPage extends StatelessWidget {
  const TransitionLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: const Locations(),
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
          icon: const Icon(Icons.location_pin),
          onPressed: () {},
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.search_outlined),
        onPressed: () {},
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      elevation: 0.0,
      unselectedItemColor: Colors.white54,
      selectedItemColor: Colors.white,
      backgroundColor: Colors.transparent,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.pin_drop_outlined),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_location),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: '',
        ),
      ],
    );
  }
}
