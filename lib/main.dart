import 'package:flutter/material.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:line/src/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LineSDK.instance.setup("${your channel id}").then((_) {
    print("LineSDK Prepared");
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LineLoginPage(),
    );
  }
}
