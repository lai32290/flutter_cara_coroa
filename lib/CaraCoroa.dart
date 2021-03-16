import 'dart:math';

import 'package:cara_coroa/ResultPage.dart';
import 'package:flutter/material.dart';

class CaraCoroa extends StatefulWidget {
  @override
  _CaraCoroaState createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {
  List _coins = [
    'images/moeda_cara.png',
    'images/moeda_coroa.png'
  ];

  void getCoin() {
    String coin = _coins[Random().nextInt(_coins.length)];
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => ResultPage(coin)
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff33C088),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: GestureDetector(
                child: Image.asset('images/botao_jogar.png'),
                onTap: getCoin,
              )
            )
          ]
        )
      )
    );
  }
}
