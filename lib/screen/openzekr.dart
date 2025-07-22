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

          Stack(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    item.titlezekr,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Positioned(
                left: 14,
                top: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    item.repeat.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Stack(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 5,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    item.contant,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          if (item.referance != null)
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      item.referance.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 15),
          if (item.note != null)
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      item.note.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),

          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: Stack(
          //     children: [
          //       Container(
          //         width: double.infinity,
          //         decoration: BoxDecoration(
          //           color: Colors.white,
          //           borderRadius: BorderRadius.circular(12),
          //           boxShadow: [
          //             BoxShadow(
          //               color: Colors.black.withOpacity(0.2),
          //               blurRadius: 5,
          //               offset: const Offset(0, 2),
          //             ),
          //           ],
          //         ),
          //         padding: const EdgeInsets.all(16),
          //         child: Text(
          //           item.contant,
          //           textAlign: TextAlign.justify,
          //           style: const TextStyle(fontSize: 18, height: 1.6),
          //           textDirection: TextDirection.rtl,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          // Text(
          //   item.note.toString(),
          //   textAlign: TextAlign.start,
          //   style: const TextStyle(fontSize: 20),
          // ),
          // const SizedBox(height: 30),
          // const Divider(),
          // Text(
          //   item.referance.toString(),
          //   textAlign: TextAlign.start,
          //   style: const TextStyle(fontSize: 20),
          // ),
          // const SizedBox(height: 30),

          // const Divider(),
        ],
      ),
    );
  }
}
