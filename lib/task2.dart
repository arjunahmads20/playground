import 'package:flutter/material.dart';

void main() {
  
  final List<String> entries = <String>['Tugas 1 ABP', 'Tugas 2 ABP'  , 'Tugas 2 PP'];
  final List<String> entries_deadline = <String>['7 Mei 2026', '8 Juni 2026'  , '9 Mei 2026'];
  final List<int> colorCodes = <int>[600, 500, 100];
  
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
            children: [
              Text('2311102211'),
              GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      color: Colors.blue[500],
                      width: 25,
                      height: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      color: Colors.blue[500],
                      width: 25,
                      height: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      color: Colors.blue[500],
                      width: 25,
                      height: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      color: Colors.blue[500],
                      width: 25,
                      height: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      color: Colors.blue[500],
                      width: 25,
                      height: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      color: Colors.blue[500],
                      width: 25,
                      height: 50,
                    ),
                  ],
                ),
                ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.amber[colorCodes[index]],
                        child: Column(children: [Text('${entries[index]}'), Text('Deadline: ${entries_deadline[index]}')]),
                      );
                    }
                ),
              ],
            ),
          ),
    )
  );
}
