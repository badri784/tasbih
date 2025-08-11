import 'package:flutter/material.dart';
import 'package:tasbih/screen/openzekr_detail.dart';
import '../model/model.dart';

class EveningZekar extends StatelessWidget {
  const EveningZekar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),

        backgroundColor: const Color.fromARGB(255, 36, 73, 104),
        title: const Text('اذكار المساء', style: TextStyle(fontSize: 28)),
        centerTitle: true,
        elevation: 4,
      ),

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
                    builder: (context) => OpenZekerDetail(item: itemzekr),
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
