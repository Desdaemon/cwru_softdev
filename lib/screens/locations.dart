import 'package:cwru_softdev/providers.dart';
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
                    initialValue: widget.destination.description,
                    decoration: const InputDecoration(hintText: 'Location name (Home, class etc.)'),
                    onChanged: (val) {
                      name = val;
                    },
                  ),
                  ButtonBar(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          final locs = ref.read(locations.state);
                          Navigator.of(context).pop();
                          if (widget.editing) {
                            locs.state = [
                              for (final item in locs.state)
                                if (item.coords == widget.destination.coords)
                                  Destination(coords: item.coords, description: name)
                                else
                                  item
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
                        },
                        icon: widget.editing ? const Icon(Icons.edit) : const Icon(Icons.add),
                        label: widget.editing ? const Text('Edit location') : const Text('Add location'),
                      ),
                      if (widget.editing)
                        ElevatedButton.icon(
                          onPressed: () {
                            final locs = ref.read(locations.state);
                            Navigator.of(context).pop();
                            locs.state = [
                              for (final item in locs.state)
                                if (item.coords != widget.destination.coords) item
                            ];
                          },
                          icon: const Icon(Icons.delete),
                          label: const Text('Delete location'),
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.error),
                            backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).colorScheme.onError,
                            ),
                          ),
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
