import 'package:checkboxes/module.dart';
import 'package:checkboxes/statemg.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MainHome());
}

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Logic>(
      create: (context) => Logic(),
      child: MaterialApp(
        home: Scaffold(
          body: CheckBoxShow(),
        ),
      ),
    );
  }
}
