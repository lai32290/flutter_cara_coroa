import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  String coin;

  ResultPage(this.coin);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33C088),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.coin),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: GestureDetector(
                child: Image.asset('images/botao_voltar.png'),
                onTap: () { Navigator.pop(context); }
              )
            )
          ]
        )
      )
    );
  }
}
