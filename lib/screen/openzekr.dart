// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import '../model/model.dart';

class Openzekr extends StatefulWidget {
  const Openzekr({super.key, required this.item});
  final Model item;
  @override
  State<Openzekr> createState() => _OpenzekrState();
}

class _OpenzekrState extends State<Openzekr> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = widget.item.repeat;
  }

  void countdown() {
    count--;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.item.titlezekr,
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
                    widget.item.titlezekr,
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
                    count.toString(),
                    // widget.item.repeat.toString(),
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
                    widget.item.contant,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          if (widget.item.referance != null)
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
                      widget.item.referance.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 15),
          if (widget.item.note != null)
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
                      widget.item.note.toString(),
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          Container(
            padding: const EdgeInsets.only(left: 1, right: 1),
            width: double.infinity,
            height: 650,
            child: InkWell(
              focusColor: Colors.white,
              onTap: () {
                if (count <= 0) {
                  setState(() {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text(
                          'تم الانتهاء من التكرار',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        backgroundColor: const Color.fromARGB(
                          255,
                          36,
                          117,
                          189,
                        ),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        margin: const EdgeInsets.all(12),
                        duration: const Duration(seconds: 4),
                        action: SnackBarAction(
                          label: 'Next',
                          onPressed: () {
                            Navigator.of(context).pop(false);
                          },
                        ),
                      ),
                    );
                  });
                } else {
                  setState(() {
                    countdown();
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
