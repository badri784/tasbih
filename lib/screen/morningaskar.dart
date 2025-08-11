import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/model.dart';
import 'openzekr_detail.dart';

class MorningAzkar extends StatelessWidget {
  const MorningAzkar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            backgroundColor: Color.fromARGB(255, 36, 73, 104),
            title: Text('اذكار الصباح', style: TextStyle(fontSize: 28)),
            centerTitle: true,
            elevation: 4,
            snap: true,
            floating: true,
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final itemzekr = morningazkar[index];
              return Card.outlined(
                child: ListTile(
                  title: Text(itemzekr.titlezekr, textAlign: TextAlign.start),
                  subtitle: Text(itemzekr.contant, textAlign: TextAlign.start),
                  trailing: CircleAvatar(
                    child: Text(itemzekr.repeat.toString()),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => OpenZekerDetail(item: itemzekr),
                      ),
                    );
                  },
                ),
              );
            }, childCount: morningazkar.length),
          ),
        ],
      ),
    );
  }
}
