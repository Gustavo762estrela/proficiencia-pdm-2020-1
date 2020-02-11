import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Prova',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Meus Livros'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      
    body: new Column(
    children: <Widget>[
      new ListTile(
        leading: const Icon(Icons.star),
        title: new Text("Harry Potter",
          ),
          subtitle: new Text("lido"),
        
      ),
      new ListTile(
        leading: const Icon(Icons.star),
        title: new Text("Senhor dos aneis",
          ),
        ),
      
      new ListTile(
        leading: const Icon(Icons.star),
        title: new Text("Analise Preditiva",
        ),
      ),
      new ListTile(
        leading: const Icon(Icons.star),
        title: new Text(
          "Negocios Digitais",
        ),
      ),    
      
      ],
      
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add),
      ), 
    );
     
  }
  
}
