import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class GetLocation extends StatefulWidget {
  @override
  _GetLocationState createState() => _GetLocationState();
}

class _GetLocationState extends State<GetLocation> {
  var locationMessage = "";

  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    var lastPosition = await Geolocator.getLastKnownPosition();
    print(lastPosition);
    
    
    setState(() {
      locationMessage = "$position.altitude ,$position.latitude , $position.longitude" ;
    });
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
