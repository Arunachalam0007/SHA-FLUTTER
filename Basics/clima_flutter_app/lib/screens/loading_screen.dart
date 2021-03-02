import 'package:clima_flutter_app/screens/location_screen.dart';
import 'package:clima_flutter_app/services/location.dart';
import 'package:clima_flutter_app/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:clima_flutter_app/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double longitude;
  double latitude;
  String networkURL;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    Duration duration = Duration(minutes: 5);
    await location.getCurrentLocation();
    longitude = location.longitude;
    latitude = location.latitude;
    networkURL =
        'http://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$kAPIKey';
    NetworkHelper networkHelper = NetworkHelper(url: networkURL);
    var weatherData = networkHelper.getResponseData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen();
    }));

    //   var temperature = weatherData['main']['temp'];
    //   var condition = weatherData['weather'][0]['id'];
    //   var cityName = weatherData['name'];
    // print('$temperature $condition $cityName');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitRotatingPlain(
          size: 30,
          color: Colors.red,
        ),
      ),
    );
  }
}
