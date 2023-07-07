import 'package:appcc/blocs/bloc.dart';
import 'package:appcc/blocs/bloc_event.dart';
import 'package:appcc/blocs/bloc_state.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Mytest(),
  ));
}

class Mytest extends StatefulWidget {
  Mytest({super.key});

  @override
  State<Mytest> createState() => _MytestState();
}

var bloc = Bloc();

class _MytestState extends State<Mytest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          initialData: BlocState.initial(),
          stream: bloc.stateController.stream,
          builder: (context, snapshot) {
            return Column(
              children: [
                if (snapshot.data!.isLoading)
                  CircularProgressIndicator()
                else if (snapshot.data!.isFailure)
                  Text("data")
                else
                  Text("thành công")
              ],
            );
          }),
    );
  }
}
