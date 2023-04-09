import 'package:flutter/material.dart';

class AnggotaKelompok extends StatelessWidget {
  const AnggotaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Anggota Kelompok'),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ListView(
            children: const [
              Card(
                child: ListTile(
                  title: Text('Haidarrachman Gustavian Rahardjo'),
                  subtitle: Text('123200075'),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('Rowang Pramudito'),
                  subtitle: Text('123200098'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
