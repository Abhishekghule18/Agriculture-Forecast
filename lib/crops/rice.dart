import 'package:flutter/material.dart';

class RiceData extends StatelessWidget {
  static const String id = 'rice_data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rice',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
            fontSize: 28.0,
          ),
        ),
      ),
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/rice.jpg'),
          ),
          Container(
            color: Colors.white12,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Temperature :',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'It requires uniformly medium temperature varying between 15° and 27° C.',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Rainfall :',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'The modest requirement of water can be met by slightly more than average annual rainfall of 100- 150 cm',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Cropping Season and Time Period :',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    'Kharif \nSown: June-July\nHarvested: September-October ',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
