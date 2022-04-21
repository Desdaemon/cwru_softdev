import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/widgets/center_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Locations extends ConsumerStatefulWidget {
  final Destination destination;
  final bool editing;

  const Locations({
    Key? key,
    required Destination coord,
    this.editing = false,
  })  : destination = coord,
        super(key: key);

  @override
  _LocationsState createState() => _LocationsState();
}

class _LocationsState extends ConsumerState<Locations> {
  String? name;

  void handleAdd() {
    Navigator.of(context).pop();
    final locs = ref.read(locations.state);
    if (widget.editing) {
      locs.state = [
        for (final item in locs.state)
          if (item.coords == widget.destination.coords) Destination(coords: item.coords, description: name) else item
      ];
    } else {
      locs.state = [
        ...locs.state,
        Destination(
          coords: widget.destination.coords,
          description: name,
        )
      ];
    }
  }

  void handleDelete() {
    Navigator.of(context).pop();
    final locs = ref.read(locations.state);
    locs.state = [
      for (final item in locs.state)
        if (item.coords != widget.destination.coords) item
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.destination.description.isEmpty
            ? const Text('New Location')
            : Text('Edit "${widget.destination.description}"'),
      ),
      body: CenterFrame(Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Wrap(
              runSpacing: 16,
              children: [
                TextFormField(
                  initialValue: widget.destination.coords.lat.toStringAsFixed(3),
                  enabled: false,
                  decoration: const InputDecoration(
                    labelText: 'Latitide',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  initialValue: widget.destination.coords.lon.toStringAsFixed(3),
                  enabled: false,
                  decoration: const InputDecoration(
                    labelText: 'Longitude',
                    border: OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  initialValue: widget.destination.description,
                  onChanged: (val) => name = val,
                  decoration: const InputDecoration(
                    hintText: 'Home, class etc.',
                    labelText: 'Location description',
                    border: OutlineInputBorder(),
                  ),
                ),
                ButtonBar(
                  children: [
                    ElevatedButton.icon(
                      onPressed: handleAdd,
                      icon: widget.editing ? const Icon(Icons.edit) : const Icon(Icons.add),
                      label: widget.editing ? const Text('Edit location') : const Text('Add location'),
                    ),
                    if (widget.editing)
                      ElevatedButton.icon(
                        onPressed: handleDelete,
                        icon: const Icon(Icons.delete),
                        label: const Text('Delete location'),
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.error),
                          backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onError),
                        ),
                      )
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
