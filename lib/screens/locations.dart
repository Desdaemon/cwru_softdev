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
  String? name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Location')),
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1080),
          child: Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Add location', style: Theme.of(context).textTheme.titleLarge),
                  TextFormField(
                    decoration: const InputDecoration(hintText: 'Location name (Home, class etc.)'),
                    onChanged: (val) {
                      name = val;
                    },
                  ),
                  ButtonBar(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          final description = name;
                          final locs = ref.read(locations.state);
                          Navigator.of(context).pop();
                          locs.state = [
                            ...locs.state,
                            Destination(
                              coords: Coords(lat: widget.coord.latitude, lon: widget.coord.longitude),
                              description: description,
                            )
                          ];
                        },
                        icon: const Icon(Icons.add),
                        label: const Text('Add location'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
