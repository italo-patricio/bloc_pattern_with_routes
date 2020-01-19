import 'package:flutter/material.dart';

class AppMain extends StatefulWidget {
  @override
  _AppMainState createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter counter bloc pattern'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: RaisedButton.icon(
                  icon: Icon(Icons.insert_link),
                  label: Text('Contador Bloc Pattern'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'counter');
                  },
                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: RaisedButton.icon(
                  icon: Icon(Icons.insert_link),
                  label: Text('Login'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'auth');
                  },
                ),
              ),
            ),
          ]),
    );
  }
}
