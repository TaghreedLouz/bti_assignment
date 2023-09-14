import 'package:bti_assignment/Ass1/place_model.dart';
import 'package:bti_assignment/Ass1/place_widget.dart';
import 'package:flutter/material.dart';

import 'Ass1/place_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final placeModel = PlaceModel(place);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: PlaceScreen(placeModel),
    );
  }
}

