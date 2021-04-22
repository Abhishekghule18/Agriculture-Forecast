import 'package:flutter/material.dart';

class CottonData extends StatelessWidget {
  static const String id = 'cotton_data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cotton',
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
            image: AssetImage('assets/cotton.jpg'),
          ),
          Container(
            color: Colors.white12,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TEMPERATURE :',
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
                    'It requires uniformly high temperature varying between 21°C and 30°C.',
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
                    'RAINFALL :',
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
                    'The modest requirement of water can be met by an average annual rainfall of 50- 100 cm',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
