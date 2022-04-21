import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/screens/locations.dart';
import 'package:cwru_softdev/widgets/app_drawer.dart';
import 'package:cwru_softdev/widgets/base_map.dart';
import 'package:cwru_softdev/widgets/map_pin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart' hide Coords;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:blur/blur.dart';

const _accessTokenEnv = 'mapbox_token';
const _accessToken = String.fromEnvironment(_accessTokenEnv);

final _markers = Provider((ref) {
  final locs = ref.watch(locations);
  return locs.map((coord) {
    final latlng = LatLng(coord.coords.lat, coord.coords.lon);
    return Marker(
      point: latlng,
      builder: (_) => MapPin(
        coord: latlng,
        description: coord.description,
      ),
    );
  }).toList(growable: false);
});

enum Layers { dark, light }

extension LayerExt on Layers {
  String get url => const {
        Layers.dark: 'https://api.mapbox.com/styles/v1/mapbox/navigation-night-v1/tiles/{z}/{x}/{y}{r}'
            '?access_token=$_accessToken',
        Layers.light: 'https://api.mapbox.com/styles/v1/mapbox/navigation-day-v1/tiles/{z}/{x}/{y}{r}'
            '?access_token=$_accessToken'
      }[this]!;
}

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key, this.initialPos}) : super(key: key);

  final LatLng? initialPos;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  static const _maxZoom = 18.0;
  static const _minZoom = 1.0;

  bool _controllerReady = false;

  late MapController _controller;

  double get _zoom => _controllerReady ? _controller.zoom : 16;

  void _zoomTo(double zoom) {
    setState(() {
      _controller.move(_controller.center, zoom.clamp(_minZoom, _maxZoom));
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = MapController()
      ..onReady.then((_) {
        setState(() {
          _controllerReady = true;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      extendBodyBehindAppBar: true,
      drawer: const AppDrawer(),
      body: BaseMap(
        controller: _controller,
        onTap: (_, coord) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => Locations(
                coord: Destination(
                  coords: Coords(
                    lat: coord.latitude,
                    lon: coord.longitude,
                  ),
                ),
              ),
            ),
          );
        },
        nonRotatedChildren: [
          Consumer(
            builder: (_ctx, ref, _) => MarkerLayerWidget(
              options: MarkerLayerOptions(markers: ref.watch(_markers)),
            ),
          ),
          Stack(
            children: [
              Positioned(
                right: 12,
                bottom: 12,
                child: Column(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        _zoomTo(_zoom + 0.25);
                      },
                    ),
                    StreamBuilder(
                      // listen to events emitted by the controller as well
                      // stream: _controller.mapEventStream,
                      builder: (context, _) {
                        return RotatedBox(
                          quarterTurns: 3,
                          child: Slider(
                            max: _maxZoom,
                            min: _minZoom,
                            value: _zoom,
                            onChanged: _zoomTo,
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        _zoomTo(_zoom - 0.25);
                      },
                    ),
                  ],
                ).frosted(
                  frostColor: Theme.of(context).backgroundColor,
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
