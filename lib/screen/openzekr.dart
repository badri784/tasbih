// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../model/model.dart';

class Openzekr extends StatelessWidget {
  const Openzekr({super.key, required this.item});
  final Model item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.titlezekr,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 10, right: 15),
        children: [
          const Divider(thickness: 0.5),

          Text(
            item.titlezekr,
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 20),
          ),

          const SizedBox(height: 30),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(
                    left: 40,
                  ), // عشان نسيب مكان للدائرة
                  child: Text(
                    item.contant,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(fontSize: 18, height: 1.6),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 20,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.green,
                    child: Text(
                      item.repeat.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // const SizedBox(height: 30),
          const Divider(),
          Text(
            item.note.toString(),
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 30),

          const Divider(),
          Text(
            item.referance.toString(),
            textAlign: TextAlign.start,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 30),

          const Divider(),
        ],
      ),
    );
  }
}
