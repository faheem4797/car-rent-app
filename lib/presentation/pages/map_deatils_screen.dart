import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapDetailsScreen extends StatelessWidget {
  const MapDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Container(
        height: double.maxFinite,
        color: Colors.orange,
        child: FlutterMap(
          options: MapOptions(
            initialCenter: const LatLng(51, 0.09),
            initialZoom: 13,
            cameraConstraint: CameraConstraint.contain(
              bounds: LatLngBounds(
                const LatLng(-90, -180),
                const LatLng(90, 180),
              ),
            ),
          ),
          children: const [
            // openStreetMapTileLayer,
            // RichAttributionWidget(
            //   popupInitialDisplayDuration: const Duration(seconds: 5),
            //   animationConfig: const ScaleRAWA(),
            //   showFlutterMapAttribution: false,
            //   attributions: [
            //     TextSourceAttribution(
            //       'OpenStreetMap contributors',
            //       onTap: () async => launchUrl(
            //         Uri.parse('https://openstreetmap.org/copyright'),
            //       ),
            //     ),
            //     const TextSourceAttribution(
            //       'This attribution is the same throughout this app, except '
            //       'where otherwise specified',
            //       prependCopyright: false,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
