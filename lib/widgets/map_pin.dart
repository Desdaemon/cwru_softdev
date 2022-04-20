import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/screens/locations.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class MapPin extends StatelessWidget {
  final LatLng coord;
  final String? description;
  const MapPin({Key? key, required this.coord, this.description}) : super(key: key);

  String get _describe => description ?? coord.toString();

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: _describe,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return Locations(
              coord: Destination(
                coords: Coords(lat: coord.latitude, lon: coord.longitude),
                description: description,
              ),
              editing: true,
            );
          }));
        },
        child: const Icon(Icons.pin_drop),
      ),
    );
  }
}
