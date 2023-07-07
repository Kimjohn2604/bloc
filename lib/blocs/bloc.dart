import 'dart:async';

import 'package:appcc/blocs/bloc_event.dart';
import 'package:appcc/blocs/bloc_state.dart';

class Bloc {
  final stateController = StreamController<BlocState>();
  send(blocEvent event) {
    switch (event) {
      case blocEvent.login:
        stateController.sink.add(BlocState.loading());
        Future.delayed(Duration(seconds: 2),
            () => stateController.sink.add(BlocState.success()));
    }
  }
  void dispose(){
    stateController.close();
  }
}
