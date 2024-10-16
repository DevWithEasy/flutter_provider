import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:learn_provider/app/provider/count_provider.dart';

class SingleProvider extends StatelessWidget {
  const SingleProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      body: Center(
        child: Consumer<CountProvider>(builder: (context,value,child){
          return Text(
            value.count.toString(),
            style: const TextStyle(
                fontSize: 50
            ),
          );
        })
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
          onPressed: (){
            countProvider.setCount();
          }
      ),
    );
  }
}
