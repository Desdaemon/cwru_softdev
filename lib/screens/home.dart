import 'package:cwru_softdev/widgets/cached_tile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        // CWRU's position
        options: MapOptions(
          center: LatLng(41.5035702, -81.6124676),
          zoom: 15,
          maxZoom: 17,
        ),
        layers: [
          TileLayerOptions(
            tileProvider: const CachedTileProvider(),
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: const ['a', 'b', 'c'],
            attributionBuilder: (_) {
              return const Text("© OpenStreetMap contributors", style: TextStyle(color: Colors.black));
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
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
