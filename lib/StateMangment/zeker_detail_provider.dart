import 'package:flutter_riverpod/flutter_riverpod.dart';

class ZekerDetailProvider extends StateNotifier<int> {
  ZekerDetailProvider(int initalValue) : super(initalValue);

  void countdown() {
    state--;
  }

  void zeroOrLess() {
    if (state <= 0) {
      return;
    }
  }
}

final zekerdetail = StateNotifierProvider.family<ZekerDetailProvider, int, int>(
  (ref, repeatValue) {
    return ZekerDetailProvider(repeatValue);
  },
);
