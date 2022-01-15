## Getting started

#### 1. [Setup Flutter](https://flutter.dev/docs/get-started/install)

#### 2. Clone the repo

```sh
$ git clone https://github.com/ashut08/line_sign_in_demo.git
$ cd fluttergram/
```

#### 3. Setup the line devloper console 
I write a blog about this project where you can read setup gide for line devloper console 
 [Article Link](https://ashuflutterdev.medium.com/flutter-implement-line-singin-in-for-mobile-apps-f64e41831aae)
### 4.Replace channelid with your channel id in <b>main.dart</b> file
```
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LineSDK.instance.setup("${your channel id}").then((_) {
    print("LineSDK Prepared");
  });
  runApp(MyApp());
}```