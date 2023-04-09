import 'package:flutter/material.dart';
import 'package:tpm_0604/anggota.dart';
import 'package:tpm_0604/stopwatch.dart';
import 'package:tpm_0604/recommended.dart';
import 'package:tpm_0604/favorite.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ListView(
            children: [
              Card(
                child: ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Anggota Kelompok'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return AnggotaKelompok();
                        })
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.timer),
                  title: const Text('Stopwatch'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return StopWatch();
                      })
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.web),
                  title: const Text('Site Rekomendasi'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Recommended();
                        })
                    );
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Favorite'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Favorites();
                        })
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
