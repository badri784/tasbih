import 'package:flutter/material.dart';
import '../model/model.dart';
import 'openzekr_detail.dart';

class PostPrayerAzkar extends StatelessWidget {
  const PostPrayerAzkar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الاذكار بعد الصلاه المفروضة',
          style: TextStyle(fontSize: 28),
        ),
      ),

      body: ListView.builder(
        itemCount: postPrayerAzkar.length,
        itemBuilder: (context, index) {
          final item = postPrayerAzkar[index];
          return Hero(
            tag: 'post',
            child: Card.outlined(
              key: const ValueKey(Model),
              child: ListTile(
                title: Text(item.titlezekr, textAlign: TextAlign.start),
                subtitle: Text(item.contant, textAlign: TextAlign.start),
                trailing: CircleAvatar(child: Text(item.repeat.toString())),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OpenZekerDetail(item: item),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
