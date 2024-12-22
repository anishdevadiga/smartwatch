import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class DataController extends GetxController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> syncData(Map<String, dynamic> data) async {
    try {
      await _firestore.collection('health_data').add(data);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
