import 'package:flutter/material.dart';
import 'package:tpm_0604/game_store.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
      ),
      body: ListView.builder(
          itemCount: gameFavList.length,
          itemBuilder: (context, index) {
            final GameStore game = gameFavList[index];
            return ListTile(
              leading: Image.network(
                game.imageUrls[0],
                width: 150,
                fit: BoxFit.cover,
              ),
              title: Text(game.name),
              subtitle: Text(game.price),
            );
          }
      )
    );
  }
}