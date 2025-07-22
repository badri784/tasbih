import 'package:flutter/material.dart';
import '../screen/openzekr.dart';
import '../model/model.dart';

class SlipingZekr extends StatelessWidget {
  const SlipingZekr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('اذكار النوم'), centerTitle: true),
      body: ListView.builder(
        itemCount: slepping.length,
        itemBuilder: (context, index) {
          final item = slepping[index];
          return Card.outlined(
            child: ListTile(
              title: Text(item.titlezekr, textAlign: TextAlign.start),
              subtitle: Text(item.contant, textAlign: TextAlign.start),
              trailing: CircleAvatar(child: Text(item.repeat.toString())),
              // trailing: Text(item.note.toString()),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Openzekr(item: item)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
