import 'package:flutter_riverpod/flutter_riverpod.dart';

class OpenZekrProvider extends StateNotifier<String> {
  String? selectedZekr;

  OpenZekrProvider() : super('');

  // void openAzkar() {
  //   if (selectedZekr != null && selectedZekr is String) {
  //     state = selectedZekr!;

  //   }
  // }
  void setSelected(String zekr) => state = zekr;
}

final selectedzekrprovider = StateNotifierProvider<OpenZekrProvider, String>((
  _,
) {
  return OpenZekrProvider();
});
