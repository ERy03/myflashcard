import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController questionController = TextEditingController();
  TextEditingController answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("単語の編集"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 30.0),
          Center(
            child: Text(
              "問題と答えを入力して「登録」ボタンを押して下さい",
              style: TextStyle(fontSize: 12.0),
            ),
          ),
          SizedBox(height: 30.0),
          //問題入力部分
          _questionInputPart(),
          SizedBox(height: 30.0),
          //答え入力部分
          _answerInputPart(),
        ],
      ),
    );
  }

  Widget _questionInputPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: <Widget>[
          Text(
            "問題",
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 10.0),
          TextField(
            controller: questionController,
            keyboardType: TextInputType.text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0),
          )
        ],
      ),
    );
  }

  Widget _answerInputPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: <Widget>[
          Text(
            "答え",
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 10.0),
          TextField(
            controller: answerController,
            keyboardType: TextInputType.text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0),
          )
        ],
      ),
    );
  }
}
