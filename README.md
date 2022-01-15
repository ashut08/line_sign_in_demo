## Getting started

#### 1. [Setup Flutter](https://flutter.dev/docs/get-started/install)

#### 2. Clone the repo

```sh
$ git clone https://github.com/ashut08/line_sign_in_demo.git
$ cd line_sign_in_demo/
```

#### 3. Setup the line devloper console 
I write a blog about this project where you can read setup guide for line devloper console 
 [Article Link](https://ashuflutterdev.medium.com/flutter-implement-line-singin-in-for-mobile-apps-f64e41831aae)
#### 4. Add line sdk package in <b>pubspec.yaml</b>
```
flutter_line_sdk:<latest version>

```
I write a blog about this project where you can read setup guide for line devloper console 
 [Article Link](https://ashuflutterdev.medium.com/flutter-implement-line-singin-in-for-mobile-apps-f64e41831aae)
### 5.Replace channelid with your channel id in <b>main.dart</b> file
```
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LineSDK.instance.setup("${your channel id}").then((_) {
    print("LineSDK Prepared");
  });
  runApp(MyApp());

}
```


## Demo
<p>
<img src="https://raw.githubusercontent.com/ashut08/line_sign_in_demo/main/screenshot/1_12qd4UAUcTufffYgJ4X3qw.gif" alt="feed example" width="250">
<img src="https://raw.githubusercontent.com/ashut08/line_sign_in_demo/main/screenshot/1_tB759AX2l_WZSLAueThytA.gif" alt="upload photo example" width="250">


</p>