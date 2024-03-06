import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:renalcare/db/test.dart';

class UserRepo extends GetxController{
  static UserRepo get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createUserDetails(UserDetails userDetails) async {
    await _db.collection('userDetails').add(userDetails.toMap()).whenComplete(
      () => Get.snackbar('Success', 'User Details Added Successfully'),
      )
      .catchError((error, StackTrace){

        Get.snackbar('Error', error.toString());
        print(error.toString());
      }
      );
      
  }

}