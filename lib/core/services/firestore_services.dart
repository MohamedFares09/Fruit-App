import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_app/core/services/data_services.dart';

class FireStoreServices implements DataBaseServices {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({required String path, required Map<String, dynamic> data}) async {
 await firestore.collection(path).doc(data['uid']).set(data);
  }
  

}