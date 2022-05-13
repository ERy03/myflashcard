import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Image.asset("assets/images/image_title.png"),
            ),
            _title_text(),
            // TODO 横線、
            // TODO かくにんテストをするボタン、
            // TODO radio button、
            // TODO 単語一覧を表示するボタン、
            Text(
              "Powered by Ryota @ Dreamly 2022",
              style: TextStyle(fontFamily: "Mont"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title_text() {
    return Column(
      children: <Widget>[
        Text(
          "私だけの単語帳",
          style: TextStyle(fontSize: 40.0),
        ),
        Text(
          "My Own Flashcard",
          style: TextStyle(fontSize: 24.0, fontFamily: "Mont"),
        ),
      ],
    );
  }
}
