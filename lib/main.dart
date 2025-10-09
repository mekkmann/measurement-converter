import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'US imperial to metric converter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    _textEditingController.addListener(tryConversion);
  }
  final TextEditingController _textEditingController = TextEditingController();
  final List<String> _usMeasurements = ['Fahrenheit', 'Cups', 'Miles'];
  final List<String> _euMeasurements = ['Celsius', 'Deciliters', 'Kilometers'];

  String? _selectedFrom = 'Fahrenheit';
  String? _selectedTo = 'Deciliters';

  double _lastConversion = 0;


  void _selectedConversionType(bool isFrom, String selectedValue) {
    setState(() {
      if(isFrom) {
        _selectedFrom = selectedValue;
      } else {
        _selectedTo = selectedValue;
      }
    });

    tryConversion();
  }
  void tryConversion(){
    if(_selectedFrom == 'Fahrenheit' && _selectedTo == 'Celsius') fahrenheitToCelsius(double.parse(_textEditingController.text));

    if(_selectedFrom == 'Miles' && _selectedTo == 'Kilometers') milesToKilometers(double.parse(_textEditingController.text));

    if(_selectedFrom == 'Cups' && _selectedTo == 'Deciliters') cupsToDeciliters(double.parse(_textEditingController.text));
  }
  void fahrenheitToCelsius(double toConvert) {
    setState(() {
      _lastConversion = (toConvert - 32) / 1.8;
    });
  }
  void milesToKilometers(double toConvert) {
    setState(() {
      _lastConversion = toConvert * 1.609344;
    });
  }
  void cupsToDeciliters(double toConvert) {
    setState(() {
      _lastConversion = toConvert * 2.365882365;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done

    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('US imperial to metric converter'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            // FROM -> TO SELECTOR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    DropdownButton(
                      value: _selectedFrom,
                      items:
                        _usMeasurements.map((item) => DropdownMenuItem(
                          value: item,
                          child: Text(item),
                          ),
                        ).toList(),
                      onChanged: (item) => _selectedConversionType(true, item!),
                    ),
                    Text('from'),
                  ],
                ),
                Column(
                  children: [
                    DropdownButton(
                      value: _selectedTo,
                      items:
                      _euMeasurements.map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      ),
                      ).toList(),
                      onChanged: (item) => _selectedConversionType(false, item!),
                    ),
                    Text('to'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter value to convert',
                        floatingLabelAlignment: FloatingLabelAlignment.center
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      '${_textEditingController.text} $_selectedFrom = ${_lastConversion.toStringAsFixed(2)} $_selectedTo',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
