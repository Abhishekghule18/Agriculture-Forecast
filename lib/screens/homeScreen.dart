import 'package:flutter/material.dart';

class CurrentWeather extends StatefulWidget {
  @override
  _CurrentWeatherState createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.005,),
          Center(
            child: Container(
              decoration: BoxDecoration(
                
              ),
              child: Card(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 180,
                  child: Text('A card that can be tapped'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
