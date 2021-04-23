import 'package:agri/crops/bajra.dart';
import 'package:agri/crops/cotton.dart';
import 'package:agri/crops/rice.dart';
import 'package:agri/crops/sugarCane.dart';
import 'package:agri/crops/wheat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:agri/components/cropButton.dart';

class CropList extends StatelessWidget {
  static const String id = 'crop_list';

  List<CropButton> cropButtons = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [
            CropButton(
              cropName: 'Wheat',
              onPressed: () {
                Navigator.pushNamed(context, WheatData.id);
              },
            ),
            CropButton(
                cropName: 'Rice',
                onPressed: () {
                  Navigator.pushNamed(context, RiceData.id);
                }),
            CropButton(
                cropName: 'Bajra (Pearl Millet)',
                onPressed: () {
                  Navigator.pushNamed(context, BajraData.id);
                }),
            CropButton(
                cropName: 'SugarCane',
                onPressed: () {
                  Navigator.pushNamed(context, SugarCaneData.id);
                }),
            CropButton(
                cropName: 'Cotton',
                onPressed: () {
                  Navigator.pushNamed(context, CottonData.id);
                }),
          ],
        ),
      ),
    );
  }
}

// Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [

// ],
// ),
