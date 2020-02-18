import 'dart:io'; //for FILE
import 'package:flutter/foundation.dart'; //for @required


class PlaceLocation {
  final String latitude;
  final String longitude;
  final String address;

  PlaceLocation({
    @required this.latitude, 
    @required this.longitude, 
    this.address
  });
}

class Place {
  final String id;
  final String title;
  final PlaceLocation location;
  final File image;

  Place({
    @required this.id, 
    @required this.title, 
    @required this.location, 
    @required this.image
  });
}