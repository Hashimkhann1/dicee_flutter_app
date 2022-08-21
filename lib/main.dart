import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
//  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DisePageState();
}

class _DisePageState extends State<DicePage> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 4;

  @override
  Widget build(BuildContext context) {

    void changeDiceFace(){
      setState((){
        leftDiceNumber = Random().nextInt(6) + 1;
        rightDiceNumber = Random().nextInt(6) + 1;
      });
    }

    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
                child:  TextButton(
                  onPressed: (){
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),)
            ),
            Expanded(
                child:  TextButton(
                    onPressed: (){
                      changeDiceFace();
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'))
            )
          ],
        ),
      ),
    );
  }
}
