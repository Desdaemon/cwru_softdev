import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

class MapPin extends StatelessWidget {
  final LatLng coord;
  final String? description;
  const MapPin({Key? key, required this.coord, this.description}) : super(key: key);

  String get _describe => description ?? coord.toString();

  @override
  Widget build(BuildContext context) {
    return Tooltip(message: _describe, child: GestureDetector(child: const Icon(Icons.pin_drop)));
  }
}
