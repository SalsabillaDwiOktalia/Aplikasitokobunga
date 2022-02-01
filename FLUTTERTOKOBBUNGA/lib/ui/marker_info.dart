import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:toko_bunga_flutter/ui/view_tokobunga.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'dart:ui';
import 'dart:typed_data';
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';

class MarkerInfo extends StatelessWidget {
  final Function getBitmapImage;
  final String text;
  MarkerInfo({Key key, this.getBitmapImage, this.text}) : super(key: key);

  @override
  _MarkerInfoState createState() => _MarkerInfoState();
}

class _MarkerInfoState extends State<MarkerInfo> {
  final markerKey = GlobalKey();

  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => getUint8List(markerKey)
        .then((markerBitmap) => widget.getBitmapImage(markerBitmap)));
  }

  Future<Uint8List> getUint8List(GlobalKey markerKey) async {
    RenderRepaintBoundary boundary =
    markerKey.currentContext.findRenderObject();
    var image = await boundary.toImage(pixelRatio: 1.0);
    ByteData byteData = await image.toByteData(format: icon.png);
    return byteData.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary (
      key: markerKey,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Container(
          width: 100,
          height: 100,
          color: Color.pink,
          child: Text(
            widget.text,
            style: TexStyle(
              color: Color.pink,
            ),
          ),
        ),
      ),
    );
  }

}