import 'dart:io';

import 'package:toko_bunga_flutter/server/server.dart';
import 'package:toko_bunga_flutter/ui/detail_tokobunga.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class TokobungaView extends StatelessWidget {
  final String apiUrl = UrlServer + "tokobunga/get";
  void showSnakbar(BuildContext context, Message, color) {
    final snackBar = SnackBar(content: Text(Message), backgroundColor: color);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    List<dynamic>? fecthDataTokobunga;
  }

  Future<List<dynamic>> getLists() async {
    var response = await http.get(Uri.parse(apiUrl));
    try {
      var decodedResponse = json.decode(response.body)['data'];
      print(decodedResponse);
      return decodedResponse;
    } on SocketException catch (_) {}
    return [];
  }
  void setDetail(BuildContext context,id, gerai, alamat, no_tlpn, jam_operasional, harga_buket_bunga_segar, pemesanan)async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('_id', id);
    await prefs.setString('gerai', gerai);
    await prefs.setString('alamat', alamat);
    await prefs.setString('no_tlpn', no_tlpn);
    await prefs.setString('jam_operasional', jam_operasional);
    await prefs.setString('harga_buket_bunga_segar', harga_buket_bunga_segar);
    await prefs.setString('pemesanan', pemesanan);
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) =>
                detail_tokobunga_view(id: id, gerai: gerai ,alamat: alamat,
                    no_tlpn: no_tlpn, jam_operasional: jam_operasional,
                    harga_buket_bunga_segar: harga_buket_bunga_segar, pemesanan: pemesanan)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Floristku'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: getLists(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(5),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () =>
                          setDetail(context,snapshot.data[index]['_id'],snapshot.data[index]['gerai'],
                            snapshot.data[index]['alamat'],snapshot.data[index]['no_tlpn'],
                            snapshot.data[index]['jam_operasional'],snapshot.data[index]['harga_buket_bunga_segar'],
                            snapshot.data[index]['pemesanan'],
                          ),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            AspectRatio(
                              aspectRatio: 1.0,
                              //child: Image.asset('assets/mimosa.jpeg'),
                              child: Image.network("http://localhost:3000/" +
                               snapshot.data[index]['gambar']),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    1.0, 0.0, 2.0, 0.0),
                                child: ListTile(
                                  title: Text(
                                    snapshot.data[index]['gerai'],
                                    style: const TextStyle(
                                        color: Colors.pink,
                                        fontSize: 20,
                                        fontStyle: FontStyle.normal),
                                  ),
                                  subtitle: Text("Alamat: " +
                                      snapshot.data[index]['alamat'] +
                                      "" +
                                      "            " +
                                      "No. Telp: " +
                                      snapshot.data[index]['no_tlpn'] +
                                      "" +
                                      "            " +
                                      "Jam Operasional: " +
                                      snapshot.data[index]['jam_operasional'] +
                                      "" +
                                      "            " +
                                      "Harga Buket Bunga Segar: " +
                                      snapshot.data[index]['harga_buket_bunga_segar'] +
                                      "" +
                                      "            " +
                                      "Pemesanan: " +
                                      snapshot.data[index]['pemesanan']
                                  ),

                                // Text()

                                  // author: author,
                                  // publishDate: publishDate,
                                  // readDuration: readDuration,
                                ),
                              ),
                            ),
                            // child:Card(),

                            // child:Text('Detail'),
                            // Expanded(child: Text)
                            // widget(child:)
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}