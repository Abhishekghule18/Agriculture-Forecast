import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CropList extends StatelessWidget {
  static const String id = 'crop_list';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30.0,
              child: Text(
                'Space for button',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
            CropButton(
              cropName: 'Wheat',
              onPressed: () {
                print('wheat data');
              },
            ),
            CropButton(
                cropName: 'Rice',
                onPressed: () {
                  print('rice data');
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
    return FlatButton(
      color: Colors.green,
      onPressed: onPressed,
      minWidth: 40.0,
      child: Text(
        cropName,
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
