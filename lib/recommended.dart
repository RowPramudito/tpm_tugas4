import 'package:flutter/material.dart';
import 'package:tpm_0604/game_store.dart';

class Recommended extends StatefulWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  State<Recommended> createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Recommended'),
        ),
        body: ListView.builder(
            itemCount: gameList.length,
            itemBuilder: (context, index) {
              final GameStore game = gameList[index];
              final alreadyAdded = gameFavList.contains(game);
              return ListTile(
                leading: Image.network(
                  game.imageUrls[0],
                  width: 150,
                  fit: BoxFit.cover,
                ),
                title: Text(game.name),
                subtitle: Text(game.price),
                trailing: Icon(
                  alreadyAdded ? Icons.favorite : Icons.favorite_border,
                  color: alreadyAdded ? Colors.red : null,
                ),
                onTap: () {
                  setState(() {
                    if (alreadyAdded) {
                      gameFavList.remove(game);
                    } else {
                      gameFavList.add(game);
                    }
                  });
                },
              );
            }
        )
    );
  }
}
