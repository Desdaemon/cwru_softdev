import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/widgets/app_drawer.dart';
import 'package:cwru_softdev/widgets/base_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:flutter_map_tappable_polyline/flutter_map_tappable_polyline.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latlong2/latlong.dart';

class TimelinePage extends ConsumerStatefulWidget {
  const TimelinePage(this.trip, {Key? key}) : super(key: key);
  final Trip trip;

  @override
  ConsumerState<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends ConsumerState<TimelinePage> {
  late MapController _controller;
  late List<LatLng> coords;

  @override
  void initState() {
    super.initState();
    coords = widget.trip.stops.map((e) => LatLng(e.coords.lat, e.coords.lon)).toList(growable: false);
    _controller = MapController()
      ..onReady.then((_) {
        final bounds = _controller.centerZoomFitBounds(LatLngBounds.fromPoints(coords));
        _controller.move(bounds.center, bounds.zoom - 0.5);
        showModalBottomSheet(
          context: context,
          builder: _buildBottomSheet,
          barrierColor: Colors.transparent,
        );
      });
  }

  Widget _buildBottomSheet(BuildContext bc) {
    return DraggableScrollableSheet(
      expand: false,
      builder: (context, controller) {
        return ListView.builder(
          controller: controller,
          itemBuilder: (bc, idx) {
            if (widget.trip.stops.isEmpty) {
              return const Center(
                child: Text('This trip has no destinations.'),
              );
            }
            final item = widget.trip.stops[idx];
            return ListTile(
              title: Text('${item.coords.lat} / ${item.coords.lon}'),
              subtitle: Text(item.visitTime.toDateTime().toLocal().toString()),
              onTap: () {
                _controller.move(LatLng(item.coords.lat, item.coords.lon), _controller.zoom);
              },
            );
          },
          itemCount: widget.trip.stops.length.clamp(1, double.infinity) as int,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Timeline')),
      drawer: const AppDrawer(),
      body: BaseMap(
        controller: _controller,
        layers: [
          TappablePolylineLayerOptions(
            polylineCulling: true,
            polylines: [
              TaggedPolyline(
                points: coords,
                borderColor: Theme.of(context).colorScheme.secondary,
                borderStrokeWidth: 6.0,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
