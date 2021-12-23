import 'package:flutter/material.dart';
import 'package:sample/main_model.dart';
import 'package:provider/provider.dart';

// B. main関数
void main() {
  runApp(MyApp());
}

// D. StatelessWidgetを継承したクラス
class MyApp extends StatelessWidget {
  final String tsukuruText = 'ツクルさんじゃ無いよ';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home:  ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          // L. AppBar
          appBar: AppBar(
            title: Text('Flutter大学'),
          ),
          // M. bodyでページの中身をレイアウト
          body: Consumer<MainModel>(
            builder: (context, model, snapshot) {
              return Center(
                child: Column(
                  children: [
                    Text(
                      model.tsukuruText,
                          style: TextStyle(
                        fontSize: 30,
                    ),
                    ),
                    ElevatedButton(
                      child: Text('ボタン'),
                      onPressed: (){
                        model.changetsukuruText();
                      },
                    ),
                  ],
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}