import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ShoeView extends StatelessWidget {
  String url;
  late WebViewController _webViewController;

  ShoeView(this.url);

  void _launchUrl() async {

    final Uri _url = Uri.parse(url);
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade300,
        ),
        body:Center(
            child: Container(
                height: 50,
                width: 120,
                color: Colors.red,
                child: Center(
                  child: GestureDetector(
                    onTap: () async {

                      if (await Permission.camera.isGranted) {
                        // permission is already granted
                      } else {
                        // request permission from the user
                        if (await Permission.camera.request().isGranted) {
                          // permission is granted by the user
                          _launchUrl();
                        } else {
                          // permission is denied by the user
                          final snackBar = SnackBar(content: Text('Permission denied'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          return;
                        }
                      }
                      _launchUrl();
                    },
                    child: const Text("Launch"),
                  ),
                )))
    );
  }


}
