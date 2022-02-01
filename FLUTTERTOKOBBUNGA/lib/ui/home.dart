import 'package:toko_bunga_flutter/ui/add_tokobunga.dart';
import 'package:toko_bunga_flutter/ui/login.dart';
import 'package:toko_bunga_flutter/ui/map_utils.dart';
import 'package:toko_bunga_flutter/ui/profile.dart';
import 'package:toko_bunga_flutter/ui/view_tokobunga.dart';
import 'package:toko_bunga_flutter/ui/map.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage extends StatelessWidget {
  Future<void> Logout() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Florisku"),
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: 300,
                      height: 200,
                      child: Image.asset("assets/floristku.jpeg"),
                    ),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.all(20.0),
                  //   child: Container(
                  //     width: 100,
                  //     height: 100,
                  //     child: Image.asset("assets/icon.png"),
                  //   ),
                  // )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Container(
                  //   padding: EdgeInsets.all(10.0),
                  // ),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 100.0,
                        minWidth: 150.0,
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: const Icon(Icons.map),
                        onPressed: () => {
                          //MapUtils.openMap(-5.3895818, 105.2288646),
                          //MapUtils.openMap(-5.3697024, 105.3019188),
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Map()),
                          )
                        },
                        splashColor: Colors.redAccent,
                      )),
                  Padding(
                      padding: EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 100.0,
                        minWidth: 150.0,
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: const Icon(Icons.list_alt),
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TokobungaView()),
                          )
                        },
                        splashColor: Colors.redAccent,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 100.0,
                        minWidth: 150.0,
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: const Icon(Icons.post_add_outlined),
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  AddTokobunga()),
                          )
                        },
                        splashColor: Colors.redAccent,
                      )),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 18.0,
                        height: 100.0,
                        minWidth: 150.0,
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: const Icon(Icons.people_outline_outlined),
                        onPressed: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyProfile()),
                          )
                        },
                        splashColor: Colors.redAccent,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        elevation: 10.0,
                        height: 80.0,
                        minWidth: 120.0,
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        child: const Icon(Icons.logout),
                        onPressed: () => {
                          Logout(),
                          //  Logout();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          )
                        },
                        splashColor: Colors.pink,
                      )),
                ],
              ),
            ],
          )),
    );
  }
}