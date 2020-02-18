import 'package:flutter/foundation.dart';
import 'package:great_place/models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _places = [];

  List<Place> get place {
    return [..._places];
  }
}
