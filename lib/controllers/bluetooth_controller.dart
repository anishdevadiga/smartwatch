import 'package:get/get.dart';
import '../services/mock_bluetooth_sdk.dart';

class BluetoothController extends GetxController {
  var heartRate = 0.obs;
  var stepCount = 0.obs;

  final MockBluetoothSDK _bluetoothSDK = MockBluetoothSDK();

  @override
  void onInit() {
    _bluetoothSDK.getHeartRateStream().listen((rate) => heartRate.value = rate);
    _bluetoothSDK.getStepCountStream().listen((steps) => stepCount.value = steps);
    super.onInit();
  }
}
