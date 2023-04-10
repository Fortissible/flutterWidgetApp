import 'package:flutter/material.dart';

void main() => runApp(const MyDartWidgetApp());

class MyDartWidgetApp extends StatelessWidget {
  const MyDartWidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first flutter app!'),
          actions: <Widget> [
            IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
            )
          ],
          leading: IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              )),
        ),
        body: Center(
          child: Column(
            children: const <Widget> [
              StatelessHeadingText(
                  text: "Hello stateless widget text!"
              ),
              StatefulHeadingText(
                  text: "Hello stateful widget text!"
              )
            ],
          ),
        )
      ),
    );
  }
}

class StatelessHeadingText extends StatelessWidget{
  final String text;

  const StatelessHeadingText({Key? key, required this.text}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class StatefulHeadingText extends StatefulWidget{
  final String text;

  const StatefulHeadingText ({Key? key, required this.text}) : super(key: key);

  @override
  _StatefulHeadingTextState createState() => _StatefulHeadingTextState();
}

class _StatefulHeadingTextState extends State<StatefulHeadingText>{
  double _textSize = 16.0;

  onPressedZoom(){
    setState(() {
      _textSize += 4.0;
    });
  }

  onPressedZoomedOut(){
    setState(() {
      _textSize -= 4.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Padding(
            padding: const EdgeInsets.all(16.0),
            child : Text(
            widget.text,
            style: TextStyle(
              fontSize: _textSize
            )
          )
        ),
        ElevatedButton(
            onPressed: onPressedZoom,
            child: const SizedBox(
              width: 200,
              child: Center(
                child : Text("Perbesar statefull text!"),
              ),
            )
        ),
        ElevatedButton(
            onPressed: onPressedZoomedOut,
            child: const SizedBox(
                width: 200,
                child: Center(
                    child : Text("Perkecil statefull text!"),
                ),
            )
        ),
      ],
    );
  }
}
