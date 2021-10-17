import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';

class UserProfiles extends StatefulWidget {
  //const UserProfile({Key? key}) : super(key: key);
  Map data;
  UserProfiles({this.data});
  @override
  _UserProfilesState createState() => _UserProfilesState();
}

class _UserProfilesState extends State<UserProfiles> {
  @override
  Widget build(BuildContext context) {
    print(widget.data);
    return Scaffold(
      appBar: AppBar(
        title: Text("Line User Data"),
        actions: [
          GestureDetector(
              onTap: () async {
                try {
                  await LineSDK.instance.logout();
                  Navigator.pop(context);
                } on PlatformException catch (e) {
                  print(e.message);
                }
              },
              child: Icon(Icons.logout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 30),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(widget.data["pictureUrl"]),
                        fit: BoxFit.fill,
                      ),
                      //  borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black))),
            ),
            Row(
              children: [
                Text("Username is:",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(widget.data["displayName"]),
              ],
            ),
            Row(
              children: [
                Text("Userid is:",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(widget.data["userId"]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
