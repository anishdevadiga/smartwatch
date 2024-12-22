import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/bluetooth_controller.dart';

class DashboardScreen extends StatelessWidget {
  final BluetoothController bluetoothController = Get.put(BluetoothController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard')),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Obx(() => Text('Heart Rate: ${bluetoothController.heartRate.value}')),
              leading: Icon(Icons.favorite, color: Colors.red),
            ),
          ),
          Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Obx(() => Text('Step Count: ${bluetoothController.stepCount.value}')),
              leading: Icon(Icons.directions_walk, color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}