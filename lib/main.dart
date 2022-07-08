import 'package:flutter/material.dart';
import 'package:qr_code_generator_app/UI_Design/style_file.dart';
import 'package:qr_flutter/qr_flutter.dart';
//import 'style_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyle.primaryColor,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: QrImage(
                  data: data,
                  backgroundColor: Colors.white70,
                  size: 300.0,
                  version: QrVersions.auto,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Container(
                  width: 300.0,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        data = value;
                      });
                    },
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70),
                    decoration: InputDecoration(
                      hintText: "Type Value",
                      filled: true,
                      fillColor: AppStyle.textColor,
                      border: InputBorder.none,
                    ),
                  )),
              SizedBox(
                height: 24.0,
              ),
              RawMaterialButton(
                  fillColor: AppStyle.accentColor,
                  shape: StadiumBorder(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 36.0,
                    vertical: 16.0,
                  ),
                  onPressed: () {},
                  child: Text("Generate QR Code"))
            ]));
  }
}
