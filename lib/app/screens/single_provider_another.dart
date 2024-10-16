import 'package:flutter/material.dart';
import 'package:learn_provider/app/provider/opacity_provider.dart';
import 'package:provider/provider.dart';

class SingleProviderAnother extends StatelessWidget {
  const SingleProviderAnother({super.key});

  @override
  Widget build(BuildContext context) {
    final opacityProvider = Provider.of<OpacityProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiple Provider'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
              min: 0,
              max: 1,
              onChanged: (val){
                opacityProvider.changeOpacity(val);
              },
              value: opacityProvider.opacity
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(opacityProvider.opacity),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(opacityProvider.opacity),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
