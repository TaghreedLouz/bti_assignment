import 'package:flutter/material.dart';

import '../../Ass1 place LV/place_model.dart';

class exListView extends StatelessWidget {
  final PlaceModel placeModel;

  exListView(this.placeModel);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: placeModel.pictures!.length,
        itemBuilder: (context, index) {
       return Padding(
         padding: const EdgeInsets.all(8.0),
         child: Image.network(placeModel.pictures![index]),
       );
      },),
    );
  }
}
