import 'package:flutter/material.dart';

class CurrentWeather extends StatefulWidget {
  static const String id = 'current_weather';
  @override
  _CurrentWeatherState createState() => _CurrentWeatherState();
}

class _CurrentWeatherState extends State<CurrentWeather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white70,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Text('Delhi',
                            style: new TextStyle(color: Colors.brown)),
                        Text('Sunny',
                            style: new TextStyle(
                                color: Colors.brown, fontSize: 32.0)),
                        Text('32-19°C',
                            style: new TextStyle(color: Colors.brown)),
                        Image.network(
                            'https://openweathermap.org/img/w/01d.png'),
                        Text('Oct 27, 2018',
                            style: new TextStyle(color: Colors.brown)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: new Icon(Icons.refresh),
                tooltip: 'Refresh',
                onPressed: () => null,
                color: Colors.brown,
              ),
            ),
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200.0,
                child: new ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Delhi',
                                style: new TextStyle(color: Colors.black)),
                            Text('Sunny',
                                style: new TextStyle(
                                    color: Colors.black, fontSize: 24.0)),
                            Text('31-17°C',
                                style: new TextStyle(color: Colors.black)),
                            Image.network(
                                'https://openweathermap.org/img/w/01d.png'),
                            Text('Oct 28, 2018',
                                style: new TextStyle(color: Colors.black)),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Delhi',
                                style: new TextStyle(color: Colors.black)),
                            Text('Sunny',
                                style: new TextStyle(
                                    color: Colors.black, fontSize: 24.0)),
                            Text('31-19°C',
                                style: new TextStyle(color: Colors.black)),
                            Image.network(
                                'https://openweathermap.org/img/w/01d.png'),
                            Text('Oct 29, 2018',
                                style: new TextStyle(color: Colors.black)),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Delhi',
                                style: new TextStyle(color: Colors.black)),
                            Text('Cloudy',
                                style: new TextStyle(
                                    color: Colors.black, fontSize: 24.0)),
                            Text('30-18°C',
                                style: new TextStyle(color: Colors.black)),
                            Image.network(
                                'https://openweathermap.org/img/w/01d.png'),
                            Text('Jun 30, 2018',
                                style: new TextStyle(color: Colors.black)),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Delhi',
                                style: new TextStyle(color: Colors.black)),
                            Text('Sunny',
                                style: new TextStyle(
                                    color: Colors.black, fontSize: 24.0)),
                            Text('29-18°C',
                                style: new TextStyle(color: Colors.black)),
                            Image.network(
                                'https://openweathermap.org/img/w/01d.png'),
                            Text('Oct 31, 2018',
                                style: new TextStyle(color: Colors.black)),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Delhi',
                                style: new TextStyle(color: Colors.black)),
                            Text('Sunny',
                                style: new TextStyle(
                                    color: Colors.black, fontSize: 24.0)),
                            Text('31-18°C',
                                style: new TextStyle(color: Colors.black)),
                            Image.network(
                                'https://openweathermap.org/img/w/01d.png'),
                            Text('Nov 1, 2018',
                                style: new TextStyle(color: Colors.black)),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Delhi',
                                style: new TextStyle(color: Colors.black)),
                            Text('Sunny',
                                style: new TextStyle(
                                    color: Colors.black, fontSize: 24.0)),
                            Text('31-19°C',
                                style: new TextStyle(color: Colors.black)),
                            Image.network(
                                'https://openweathermap.org/img/w/01d.png'),
                            Text('Nov 2, 2018',
                                style: new TextStyle(color: Colors.black)),
                          ],
                        )),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
