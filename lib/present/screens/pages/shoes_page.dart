import 'package:abc/present/screens/pages/shoes_view.dart';
import 'package:abc/present/screens/pages/webview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShoeScreen extends StatelessWidget {
  const ShoeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red.shade300,
        title: const Text(
          'VIỆT NAM',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          width: 200,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ShoeView('https://demo.deepar.ai/ads/new/nike/')));
            },
            child: Text('Try it ', style: TextStyle(fontSize: 23)),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.purple),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
