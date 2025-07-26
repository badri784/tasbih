import 'package:flutter/material.dart';
import '../model/model.dart';
import 'openzekr.dart';

class MorningAzkar extends StatelessWidget {
  const MorningAzkar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('اذكار الصباح'), centerTitle: true),
      body: ListView.builder(
        itemCount: morningazkar.length,
        itemBuilder: (context, index) {
          final itemzekr = morningazkar[index];
          return Card.outlined(
            child: ListTile(
              title: Text(itemzekr.titlezekr, textAlign: TextAlign.start),
              subtitle: Text(itemzekr.contant, textAlign: TextAlign.start),
              trailing: CircleAvatar(child: Text(itemzekr.repeat.toString())),
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
