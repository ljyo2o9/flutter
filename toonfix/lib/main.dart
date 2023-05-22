import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(
        title: "My Home Page",
        count: 0,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title, required this.count})
      : super(key: key);

  final String title;
  int count;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _click() {
    setState(() {
      widget.count++;
    });
  }

  void _reset() {
    setState(() {
      widget.count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              widget.count.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
          MaterialButton(
            onPressed: () {
              _click();
            },
            child: Text(
              'Up',
              style: TextStyle(fontSize: 20),
            ),
            color: Colors.red,
          ),
          MaterialButton(
            onPressed: () {
              _reset();
            },
            child: Text('Reset', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewPage(),
                ),
              );
            },
            child: Text('New page'),
            color: Colors.green,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.replace(context,
                  oldRoute: MaterialPageRoute(
                    builder: (context) =>
                        HomePage(title: 'My Home Page', count: 0),
                  ),
                  newRoute: MaterialPageRoute(
                    builder: (context) => NewNewPage(),
                  ));
            },
            child: Text('NewNewPage'),
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Page'),
        ),
        body: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewNewPage(),
              ),
            );
          },
          child: Text('NewNewPage'),
        ));
  }
}

class NewNewPage extends StatelessWidget {
  const NewNewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trd Page'),
      ),
      body: MaterialButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(title: "My Home Page", count: 0),
            ),
            (route) => false,
          );
        },
        child: Text('HomePage'),
      ),
    );
  }
}
