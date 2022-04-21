import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';

import '../providers.dart';
import 'cached_tile_provider.dart';

enum Layers { dark, light }

const _accessTokenEnv = 'mapbox_token';
const _accessToken = String.fromEnvironment(_accessTokenEnv);

extension LayerExt on Layers {
  String get url => const {
        Layers.dark: 'https://api.mapbox.com/styles/v1/mapbox/navigation-night-v1/tiles/{z}/{x}/{y}{r}'
            '?access_token=$_accessToken',
        Layers.light: 'https://api.mapbox.com/styles/v1/mapbox/navigation-day-v1/tiles/{z}/{x}/{y}{r}'
            '?access_token=$_accessToken'
      }[this]!;
}

class BaseMap extends ConsumerStatefulWidget {
  final LatLng? initialPos;
  final List<Widget> nonRotatedChildren;
  final List<LayerOptions> layers;
  final MapController? controller;
  final double zoom;
  final void Function(dynamic tapPosition, LatLng latlng)? onTap;
  const BaseMap({
    Key? key,
    this.initialPos,
    this.nonRotatedChildren = const [],
    this.layers = const [],
    this.onTap,
    this.controller,
    this.zoom = 13,
  }) : super(key: key);

  @override
  ConsumerState<BaseMap> createState() => _BaseMapState();
}

class _BaseMapState extends ConsumerState<BaseMap> {
  _BaseMapState() {
    assert(
        const bool.hasEnvironment(_accessTokenEnv),
        'MapBox token not provided.\n'
        "Define one by using '--dart-define=$_accessTokenEnv=..'");
  }

  String get _url => _isDark ? Layers.dark.url : Layers.light.url;

  late MapController _controller;

  bool get _isDark {
    final theme = ref.watch(themeMode);
    if (theme == ThemeMode.system) {
      return MediaQuery.of(context).platformBrightness == Brightness.dark;
    }
    return theme == ThemeMode.dark;
  }

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? MapController();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: widget.initialPos ?? LatLng(41.5043453, -81.6105725),
        zoom: widget.zoom,
        enableMultiFingerGestureRace: true,
        onTap: widget.onTap,
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
        for (final layer in widget.layers) layer
      ],
      nonRotatedChildren: widget.nonRotatedChildren,
    );
  }
}
