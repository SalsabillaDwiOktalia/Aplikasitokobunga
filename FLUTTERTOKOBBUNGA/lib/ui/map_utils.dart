import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:toko_bunga_flutter/ui/home.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class MapUtils {
  MapUtils._();

  static Future<void> openMap(
      double latitude,
      double longtitude
  ) async {
    String googleMapUrl =
        "https:/www.google.com/maps/search/?api=1&query=$latitude,$longtitude";

    if (await canLaunch(googleMapUrl)) {
      await launch(googleMapUrl);
    } else {
     throw 'Could not open the Map';
    }
  }
}

// class Google