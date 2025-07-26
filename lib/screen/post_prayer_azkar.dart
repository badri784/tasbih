import 'package:flutter/material.dart';
import '../model/model.dart';
import 'openzekr.dart';

class PostPrayerAzkar extends StatelessWidget {
  const PostPrayerAzkar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاذكار بعد الصلاه المفروضة'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: postPrayerAzkar.length,
        itemBuilder: (context, index) {
          final item = postPrayerAzkar[index];
          return Card.outlined(
            child: ListTile(
              title: Text(item.titlezekr, textAlign: TextAlign.start),
              subtitle: Text(item.contant, textAlign: TextAlign.start),
              trailing: CircleAvatar(child: Text(item.repeat.toString())),
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
