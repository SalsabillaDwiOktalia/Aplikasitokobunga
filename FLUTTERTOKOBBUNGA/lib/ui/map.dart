import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:toko_bunga_flutter/ui/view_tokobunga.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  final PopupController _popupLayerController = PopupController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('Maps')),
      body: new FlutterMap(
        options: MapOptions(
          zoom: 15.0,
          center: LatLng(-5.3895818, 105.2288646),
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
            attributionBuilder: (_) {
              return Text("© OpenStreetMap contributors");
            },
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3895818, 105.2288646),
                  builder: (ctx) => new Container(
                        child: IconButton(
                          icon: Icon(Icons.location_on),
                          iconSize: 50,
                          onPressed: () {
                            print('Basing Florist');
                          },
                        ),
                      )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3803751, 105.2383368),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Sanggar Bunga Yeye');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3967539, 105.2490349),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Benapik');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3863000, 105.3005000),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Ce.florist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3893530, 105.2799031),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Chris Florist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.4078281, 105.2562825),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('La Tulipe Defleur');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.373131, 105.2448437),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Happy Flower');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.4127839, 105.2738682),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Be Forist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.4149347, 105.2867633),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Fleurstales Atelier');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3748041, 105.2598348),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Rose Florist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.4120065, 105.2677438),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Yuan Florist ');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3966519, 105.2613836),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Sanggar Bunga Dian');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3830349, 105.2387525),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Finger Dance Florist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3896069, 105.2324277),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Red Rose Florist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3795108, 105.2328794),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Black Rose Florist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3875959, 105.2304639),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Raka Florist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3893129, 105.2311777),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Berlian Florist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.388616, 105.2312247),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Distin Forist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.390205, 105.2324504),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Sanggar Bunga Utari');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3804679, 105.2382843),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Lady Flowers');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3917051, 105.2324498),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Mimosa Florist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3790181, 105.2568197),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Luna Floria');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3796721, 105.289279),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Rumah Kado Hadiah Untukmu');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3737597, 105.2530325),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Galsflorist.id');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3824373, 105.2548923),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Adm Flowers');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3714397, 105.2503765),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Fenic Bucket');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3728104, 105.2505728),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Fu Lai Florist');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.4211465, 105.2598932),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Win Bouquet');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3583586, 105.2807318),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Bakul Kembang');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.3697024, 105.3019188),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Bouquet Corner');
                      },
                    ),
                  )),
            ],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                  width: 100.0,
                  height: 100.0,
                  point: LatLng(-5.4130591, 105.2598678),
                  builder: (ctx) => new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      iconSize: 50,
                      onPressed: () {
                        print('Roja Bouquet');
                      },
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
