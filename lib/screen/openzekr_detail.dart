// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../StateMangment/snak_bar.dart';
import '../StateMangment/zeker_detail_provider.dart';
import '../model/model.dart';

class OpenZekerDetail extends ConsumerWidget {
  const OpenZekerDetail({super.key, required this.item});
  final Model item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int currentCount = ref.watch(zekerdetail(item.repeat));

    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        backgroundColor: const Color.fromARGB(255, 36, 73, 104),
        title: Text(
          item.titlezekr,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: Hero(
        tag: 'post',
        child: ListView(
          padding: const EdgeInsets.only(left: 10, right: 15),
          children: [
            const Divider(thickness: 0.5),

            Stack(
              children: [
                Card.outlined(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
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
                ),
                Positioned(
                  left: 14,
                  top: 14,
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text(
                      ref.read(zekerdetail(item.repeat)).toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Card.outlined(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
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
            ),
            const SizedBox(height: 15),
            if (item.referance != null)
              Card.outlined(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
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
              ),
            const SizedBox(height: 15),
            if (item.note != null)
              Card.outlined(
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surface,
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
              ),
            Container(
              padding: const EdgeInsets.only(left: 1, right: 1),
              width: double.infinity,
              height: 650,
              child: InkWell(
                focusColor: Colors.white,
                onTap: () {
                  final isSnackBarVisible = ref.read(
                    snackBarVisibilityProvider,
                  );
                  final snackBarController = ScaffoldMessenger.of(context);

                  if (currentCount <= 0) {
                    if (!isSnackBarVisible) {
                      ref.read(snackBarVisibilityProvider.notifier).show();
                      ref.watch(zekerdetail(item.repeat).notifier).zeroOrLess();
                      snackBarController
                          .showSnackBar(
                            SnackBar(
                              content: const Text(
                                'تم الانتهاء من التكرار',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
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
                          )
                          .closed
                          .then(
                            (_) =>
                                ref
                                    .read(snackBarVisibilityProvider.notifier)
                                    .hide(),
                          );
                    }
                  } else {
                    ref.watch(zekerdetail(item.repeat).notifier).countdown();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
