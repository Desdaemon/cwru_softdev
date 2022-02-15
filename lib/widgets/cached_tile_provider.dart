import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/plugin_api.dart';

class CachedTileProvider extends TileProvider {
  const CachedTileProvider();
  @override
  ImageProvider getImage(Coords<num> coords, TileLayerOptions options) {
    final url = getTileUrl(coords, options);
    return CachedNetworkImageProvider(url, errorListener: () {
      debugPrint('req failed: $url');
    });
  }
}
