import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('ExampleApp'),
),
body: Center(
child: Text(
'10',
style: TextStyle(
fontSize: 30
),
),
)
);
}
}
