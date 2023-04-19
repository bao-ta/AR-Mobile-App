import 'dart:io';
import 'dart:math';

import 'package:abc/present/screens/pages/webview.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                height: size.height,
                width: size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/vnbg.jpg"), fit: BoxFit.cover),
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                            child: const Text(
                              'Văn hoá Việt Nam',
                              style: TextStyle(fontSize: 44, fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 150,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {

                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => WebViewScreen(
                                        'https://vi.wikipedia.org/wiki/Ẩm_thực_Việt_Nam')));
                              },
                              child: Text('Ẩm thực', style: TextStyle(fontSize: 23)),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.purple),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => WebViewScreen(
                                        'https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_ph%E1%BB%A5c')));
                              },
                              child: Text(
                                'Trang phục',
                                style: TextStyle(fontSize: 23),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.purple),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => WebViewScreen(
                                        'https://vi.wikipedia.org/wiki/V%C4%83n_h%C3%B3a_Vi%E1%BB%87t_Nam')));
                              },
                              child: Text('Văn hoá ', style: TextStyle(fontSize: 23)),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Colors.purple),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]))));
  }
}
