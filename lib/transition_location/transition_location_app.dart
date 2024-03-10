import 'package:flutter/material.dart';
import 'package:flutter_ui_example/transition_location/pages/transition_location_page.dart';
import 'package:flutter_ui_example/transition_location/pages/transition_location_page_viewmodel.dart';
import 'package:provider/provider.dart';

class TransitionLocationApp extends StatelessWidget {
  const TransitionLocationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TransitionLocationPageVM(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TransitionLocationPage(),
      ),
    );
  }
}
