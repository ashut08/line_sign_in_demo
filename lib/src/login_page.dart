import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';
import 'package:line/src/progress.dart';
import 'package:line/src/user_profile.dart';

class LineLoginPage extends StatefulWidget {
//  const LineLoginPage({Key? key}) : super(key: key);

  @override
  _LineLoginPageState createState() => _LineLoginPageState();
}

class _LineLoginPageState extends State<LineLoginPage> {
  BuildContext _progressContext;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Line Login Demo")),
      body: Center(
        child: Container(
          height: 100,
          child: GestureDetector(
              onTap: _lineLogin, child: Image.asset("assets/Line-Logo.png")),
        ),
      ),
    );
  }

  _lineLogin() async {
    {
      try {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              _progressContext = context;
              return ProgressDialog();
            });

        final result = await LineSDK.instance
            .login(scopes: ["profile", "openid", "email"]);
        if (result != null) {
          Navigator.pop(_progressContext);
          print(result.userProfile.data);
          print(result.userProfile.pictureUrl);
          print(result.userProfile.displayName);

          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      UserProfiles(data: result.userProfile.data)));
        }
      } on PlatformException catch (e) {
        // Error handling.
        print(e.stacktrace);
      }
    }
  }
}
