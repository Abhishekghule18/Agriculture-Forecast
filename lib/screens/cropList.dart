import 'package:agri/crops/bajra.dart';
import 'package:agri/crops/cotton.dart';
import 'package:agri/crops/rice.dart';
import 'package:agri/crops/sugarCane.dart';
import 'package:agri/crops/wheat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class CropButton extends StatelessWidget {
  CropButton({@required this.cropName, @required this.onPressed});

  final Function onPressed;
  final String cropName;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 40.0,
      color: Colors.white,
      onPressed: onPressed,
      elevation: 0.9,
      splashColor: Colors.grey,
      child: Text(
        cropName,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 22.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w800,
          color: Colors.black54,
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
