import 'package:flutter/cupertino.dart';

extension ExtensionOnNum on num{
  SizedBox get gap => SizedBox(
    height: toDouble(),
    width: toDouble(),
  );
}