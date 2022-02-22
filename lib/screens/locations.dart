import 'package:cwru_softdev/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';

class Locations extends ConsumerStatefulWidget {
  final LatLng coord;

  const Locations({Key? key, required this.coord}) : super(key: key);

  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends ConsumerState<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Location'),
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                final currentLocs = ref.read(locations.state);
                currentLocs.update((state) => [...state, widget.coord]);
                Navigator.of(context).pop();
              },
              child: const Text('Add Location'))
        ],
      ),
    );
  }
}
