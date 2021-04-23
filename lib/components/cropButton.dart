import 'package:flutter/material.dart';

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
