import 'package:estudo_bloc_pattern/modules/counter/counter_module.dart';
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
      body: Center(
        child: RaisedButton.icon(
          icon: Icon(Icons.insert_link),
          label: Text('Contador Bloc Pattern'),
          onPressed: () {
            Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return CounterModule();
                      })
                  );
          },
        ),
      ),
    );
  }
}