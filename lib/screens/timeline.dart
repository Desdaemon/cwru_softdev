import 'package:cwru_softdev/providers.dart';
import 'package:cwru_softdev/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:latlong2/latlong.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage(this.trip, {Key? key}) : super(key: key);

  // final List<Destination> destinations;
  final Trip trip;

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  void initState() {
    super.initState();
  }

  Widget _buildBottomSheet(BuildContext bc) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
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
              Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                return HomePage(
                  initialPos: LatLng(item.coords.lat, item.coords.lon),
                );
              }));
            },
          );
        },
        itemCount: widget.trip.stops.length.clamp(1, double.infinity) as int,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Timeline')),
      bottomSheet: BottomSheet(
        builder: _buildBottomSheet,
        onClosing: () {},
      ),
      body: FlutterMap(options: MapOptions()),
    );
  }
}
