import 'package:flutter/material.dart';
import 'package:learn_provider/app/provider/favourite_provider.dart';
import 'package:provider/provider.dart';

class MyFavouriteScreen extends StatelessWidget {
  const MyFavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My favourite'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: favouriteProvider.favouriteList.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text('Item ${favouriteProvider.favouriteList[index]}'),
                    trailing: const Icon(Icons.favorite)
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
