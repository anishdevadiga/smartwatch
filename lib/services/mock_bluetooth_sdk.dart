import 'dart:async';
import 'dart:math';

class MockBluetoothSDK {
  Stream<int> getHeartRateStream() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 2));
      yield 60 + Random().nextInt(20); // Simulated heart rate
    }
  }

  Stream<int> getStepCountStream() async* {
    int steps = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 5));
      steps += Random().nextInt(10);
      yield steps; // Simulated step count
    }
  }
}