import 'package:flutter/material.dart';

// B. main関数
void main() {
  runApp(MyApp());
}

// D. StatelessWidgetを継承したクラス
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:  Scaffold(
    // L. AppBar
      appBar: AppBar(
       title: Text('初学習総まとめ'),
      ),
    // M. bodyでページの中身をレイアウト
      body: Center(
       child: Container(),
      ),
     ),
    );
  }
}