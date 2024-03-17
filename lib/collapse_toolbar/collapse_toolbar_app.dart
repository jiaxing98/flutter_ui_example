import 'package:flutter/material.dart';
import 'package:flutter_ui_example/collapse_toolbar/pages/collapse_toolbar_page.dart';

class CollapseToolbarApp extends StatelessWidget {
  const CollapseToolbarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CollapseToolbarPage(),
    );
  }
}
