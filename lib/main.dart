import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/add_place_screen.dart';
import './providers/great_places.dart';
import './screens/places_list_screen.dart';

void main() => runApp(MyApp());

//flutter create --androidx projectName

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => GreatPlaces(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Greate place',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen()
        },
      ),
    );
  }
}
