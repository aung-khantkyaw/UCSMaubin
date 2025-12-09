import 'package:flutter/material.dart';
import 'package:chatapp_firebase/farming/post_data/view/pages/crop_rice2.dart';
import 'package:chatapp_firebase/farming/post_data/view/presentation/themes.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        brightness: Brightness.light,
        textTheme: TextTheme(
          subtitle1: TextThemes.title,
          subtitle2: TextThemes.subtitle,
          bodyText1: TextThemes.body1,
        ),
      ),
      home: PostHomePage1(),
    );
  }
}
