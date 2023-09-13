import 'package:bti_assignment/Ass1/place_model.dart';
import 'package:flutter/material.dart';

class PlaceScreen extends StatelessWidget {
  final PlaceModel placeModel;

  PlaceScreen(this.placeModel);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Add your action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              placeModel.image ?? "",
              width: screenWidth,
              height: 400,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                placeModel.name ?? "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 16),
              child: Text(
                placeModel.description ?? "",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black38,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                child: Row(
                  children: List<Widget>.generate(
                    placeModel.pictures!.length > 4
                        ? 4
                        : placeModel.pictures!.length,
                        (int index) {
                      return Card(
                        elevation: 0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            placeModel.pictures![index],
                            width: 63,
                            height: 63,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ) +
                      (placeModel.pictures!.length > 4
                          ? [Container(
                          width: 70,
                          height: 70,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            elevation: 0,
                            color: Colors.black54,
                            child: Center(
                              child: Text(
                                '+${placeModel.pictures!.length - 4}',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ] : []),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text(
                    "More in California",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.green[800],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.green[800]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
