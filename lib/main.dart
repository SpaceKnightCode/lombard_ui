import 'package:flutter/material.dart';
import 'package:lombard_ui/il_text_button.dart';

void main(List<String> args) {
  runApp(LombardUITestPage());
}

class LombardUITestPage extends StatelessWidget {
  const LombardUITestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 100, left: 60),
          child: ILTextButton(
            text: "kuuvfuvuvulvulv",
            onPressed: () {
              print("object");
            },
            backgroundColor: Colors.orange,
          ),
        ),
      ),
    );
  }
}
