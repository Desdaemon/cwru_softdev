import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/screens/locations.dart';
import 'package:cwru_softdev/widgets/cached_tile_provider.dart';
import 'package:cwru_softdev/widgets/map_pin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:blur/blur.dart';

const _accessTokenEnv = 'mapbox_token';
const _accessToken = String.fromEnvironment(_accessTokenEnv);

final _markers = Provider((ref) {
  final locs = ref.watch(locations);
  return locs.map((coord) => Marker(point: coord, builder: (_) => MapPin(coord: coord))).toList(growable: false);
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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState() {
    assert(
        const bool.hasEnvironment(_accessTokenEnv),
        'MapBox token not provided.\n'
        "Define one by using '--dart-define=$_accessTokenEnv=..'");
  }

  static const _maxZoom = 18.0;
  static const _minZoom = 1.0;

  int _counter = 0;
  bool _controllerReady = false;

  bool get _isDark => MediaQuery.of(context).platformBrightness == Brightness.dark;

  String get _url => _isDark ? Layers.dark.url : Layers.light.url;

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

  Widget _markerBuilder(BuildContext context) {
    return const Icon(Icons.pin_drop);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        // CWRUs position
        options: MapOptions(
          center: LatLng(41.5043453, -81.6105725),
          zoom: _zoom,
          maxZoom: _maxZoom,
          minZoom: _minZoom,
          enableMultiFingerGestureRace: true,
          onLongPress: (_, coord) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => Locations(coord: coord)),
            );
          },
        ),
        mapController: _controller,
        layers: [
          TileLayerOptions(
            tileSize: 512,
            zoomOffset: -1,
            tileProvider: const CachedTileProvider(),
            urlTemplate: _url,
            backgroundColor: Theme.of(context).backgroundColor,
          ),
        ],
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
                        stream: _controller.mapEventStream,
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
                        }),
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
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'New Trip',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Trips',
          ),
        ],
        currentIndex: _counter,
        onTap: (index) {
          setState(() {
            _counter = (_counter + 1) % 3;
          });
        },
      ),
    );
  }
}
