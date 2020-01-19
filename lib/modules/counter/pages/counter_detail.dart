import 'package:flutter/material.dart';

import '../blocs/counter_bloc.dart';
import '../counter_module.dart';

class CounterDetail extends StatefulWidget {
  
  final VoidCallback onClosePage;

  const CounterDetail({
    this.onClosePage
  });

  @override
  _CounterDetailState createState() => _CounterDetailState();
}

class _CounterDetailState extends State<CounterDetail> {
  CounterBloc _counterBloc;

  @override
  void initState() {
    // _counterBloc = BlocProvider.getBloc<CounterBloc>();
    _counterBloc = CounterModule.to.bloc<CounterBloc>();

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter detalhe"),
      ),
      body: Center(
          child: StreamBuilder(stream: _counterBloc.counterStream,
                  builder: (context, snapshot) {
                    return Text('${snapshot.data}', 
                      style: TextStyle(fontSize: 25, 
                                       fontWeight: FontWeight.bold)
                     );
                  }),
        ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _counterBloc.incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: _counterBloc.decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}