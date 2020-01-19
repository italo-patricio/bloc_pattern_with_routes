import 'package:estudo_bloc_pattern/modules/app/app_module.dart';
import 'package:flutter/material.dart';

import '../blocs/counter_bloc.dart';
import '../counter_module.dart';

class CounterMain extends StatefulWidget {
  @override
  _CounterMainState createState() => _CounterMainState();
}

class _CounterMainState extends State<CounterMain> {
  CounterBloc _counterBloc;

  @override
  void initState() {
    // _counterBloc = BlocProvider.getBloc<CounterBloc>();
    _counterBloc = CounterModule.to.bloc<CounterBloc>();

    super.initState();
  }

  @override
  void dispose() {
    print('_CounterMainState dispose ');
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter bloc_pattern'),
        actions: <Widget>[
          FlatButton(
            child: Icon(Icons.settings_power, color: Colors.white),
            onPressed: () {
            Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        _counterBloc.clear();
                        return AppModule();
                      })
                  );
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
              stream: _counterBloc.counterStream,  
              builder: ( _, AsyncSnapshot<int> snapshot) {
              return Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.display1,
              );
            }),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: RaisedButton.icon(
              icon: Icon(Icons.input),
              label: Text("Acessar detalhe"),
              onPressed: () async {
                //  await Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => CounterDetail(
                //         onClosePage: () => {},
                //       )
                //     )
                //   );
                await Navigator.of(context).pushNamed('counter/detail');
               }, 
            ))
          ],
        ),
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