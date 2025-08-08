import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterProvider extends StateNotifier<int> {
  CounterProvider() : super(0);
  void incrementCounter() {
    state++;
  }

  void downCount() {
    state = 0;
  }
}

final counterprov = StateNotifierProvider<CounterProvider, int>((_) {
  return CounterProvider();
});
