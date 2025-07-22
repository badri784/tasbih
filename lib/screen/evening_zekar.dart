import 'package:flutter/material.dart';
import 'package:tasbih/screen/openzekr.dart';
import '../model/model.dart';

class EveningZekar extends StatelessWidget {
  const EveningZekar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('اذكار الصباح'), centerTitle: true),
      body: ListView.builder(
        itemCount: eveningAzkar.length,
        itemBuilder: (context, index) {
          final itemzekr = eveningAzkar[index];
          return Card.outlined(
            child: ListTile(
              title: Text(itemzekr.titlezekr, textAlign: TextAlign.start),
              subtitle: Text(itemzekr.contant, textAlign: TextAlign.start),
              trailing: CircleAvatar(child: Text(itemzekr.repeat.toString())),
              // trailing: Text(item.note.toString()),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Openzekr(item: itemzekr),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
