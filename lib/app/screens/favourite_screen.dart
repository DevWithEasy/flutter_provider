import 'package:flutter/material.dart';
import 'package:learn_provider/app/provider/favourite_provider.dart';
import 'package:learn_provider/app/screens/my_favourite_screen.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyFavouriteScreen()));
            },
            child: const Icon(Icons.favorite),
          ),
          const SizedBox(width: 25)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                 itemBuilder: (context, index){
                  return ListTile(
                    onTap: (){
                      if(favouriteProvider.favouriteList.contains(index)){
                        favouriteProvider.removeItem(index);
                      }else{
                        favouriteProvider.addItem(index);
                      }
                    },
                    title: Text('Item $index'),
                    trailing: favouriteProvider.favouriteList.contains(index) ?const Icon(Icons.favorite) : const Icon(Icons.favorite_border_outlined),
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}
