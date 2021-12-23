import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String tsukuruText = 'ツクルさんじゃ無いよ';

  void changetsukuruText() {
    tsukuruText = 'Tsukuruくんだよ';
    notifyListeners();
  }
}