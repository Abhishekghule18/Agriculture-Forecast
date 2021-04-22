import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GetLocation extends StatefulWidget {
  static const String id = 'get_location';
  @override
  _GetLocationState createState() => _GetLocationState();
}

class _GetLocationState extends State<GetLocation> {
  var locationMessage = "";
  var apiKey = '5ad105a2ca3f7716284999d27d1b04e5';
  double lat, lon;
  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);

    var lastPosition = await Geolocator.getLastKnownPosition();
    print(lastPosition);

    setState(() {
      locationMessage =
          "$position.altitude ,$position.latitude , $position.longitude";
      lat = position.latitude;
      lon = position.longitude;
    });
    getData();
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  void getData() async {
    var url =
        "https://api.openweathermap.org/data/2.5/forecast/daily?lat=$lat&lon=$lon&appid=$apiKey";
    //var url = 'http://api.openweathermap.org/data/2.5/weather?lat=14.6102473&121.0043158&appid=secret';
    //var url = 'http://api.openweathermap.org/data/2.5/weather?lat=14.6102473&lon=121.0043158&appid=secret';
    //20.0252268081483, 73.76779917236001
    print(url);

    var request = await http.get(Uri.parse(url));
    print(request.body.toString());
    if (request.statusCode == 200) {
      String data = request.body.toString();
      var city = jsonDecode(data)['name'];
      var description = jsonDecode(data)['weather'][0]['description'];

      print('Welcome to $city city!');
      print('Weather: $description');
    } else {
      print(request.statusCode);
      print(
          'Latitude is: $lat *** Longitude is: $lon'); // this prints longitude and latitude values
      print(
          'request $url'); // when I entered the url in postman, I'm getting the same error 400
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              size: 46.0,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Get user location",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20.0,
            ),
            Text(locationMessage),
            FlatButton(
              onPressed: () {
                getCurrentLocation();
              },
              child: Text("Get Current location"),
              color: Colors.teal[800],
            ),
          ],
        ),
      ),
    );
  }
}
