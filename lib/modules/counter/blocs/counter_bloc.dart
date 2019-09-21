import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/subjects.dart';

class CounterBloc extends BlocBase {

  var _counterBloc = BehaviorSubject.seeded(0);
  Sink<int> get _counterSink  => _counterBloc.sink;
  Stream<int> get counterStream => _counterBloc.stream;


  void incrementCounter() {  
      _counterSink.add(_counterBloc.value + 1);
  }

  void decrementCounter() {
      _counterSink.add(_counterBloc.value - 1);
  }

  void clear() {
    _counterSink.add(0);
  }

  @override
  void dispose() {
    clear();
    _counterBloc.close();
    super.dispose();
  }

}
