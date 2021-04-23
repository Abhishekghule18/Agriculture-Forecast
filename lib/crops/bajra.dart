import 'package:flutter/material.dart';

class BajraData extends StatelessWidget {
  static const String id = 'bajra_data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bajra',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w900,
            fontSize: 28.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage('assets/BAJRA.jpg'),
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
                      'It requires uniformly high temperature varying between 20°-35°C.',
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
                      'The modest requirement of water can be met by below average annual rainfall of 25-75 cm',
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
