import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_kuldii_07_state_management_bloc_provider/bloc/counter.dart';

import '../widget/data_widget.dart';

class HomePage extends StatelessWidget {
  // MyCounter mycounter = MyCounter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("BLOC PROVIDER")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    BlocProvider.of<MyCounter>(context).decrement();
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child:
                        Center(child: Icon(Icons.remove, color: Colors.white)),
                  ),
                ),
              ),
              const DataWidget(),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
                    BlocProvider.of<MyCounter>(context).increment();
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Center(child: Icon(Icons.add, color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
