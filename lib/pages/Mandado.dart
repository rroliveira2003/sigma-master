// Flutter code sample for material.DropdownButton.1

// This sample shows a `DropdownButton` whose value is one of
// "One", "Two", "Free", or "Four".

import 'package:flutter/material.dart';

/// This Widget is the main application widget.
class Mandado extends StatelessWidget {
  static const String _title = 'Cadastro de Mandados';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(_title)),
      body: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = '1ª Vara Cível da Comarca';
  double _volume = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            child: Text(
              "Competência",
              style: TextStyle(fontSize: 17),
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border.all()),
            child: DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>[
                '1ª Vara Cível da Comarca',
                '2ª Vara Cível da Comarca',
                '3ª Vara Cível da Comarca',
                '4ª Vara Cível da Comarca'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.volume_up),
                  tooltip: 'Increase volume by 10',
                  onPressed: () {
                    setState(() {
                      _volume += 10;
                    });
                  },
                ),
                Text('Volume : $_volume')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
