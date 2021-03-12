import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;
  static CollectionReference _program = _firestore.collection('donasi');

  // static Future<String> addDonationProgram({
  //   @required String programDetail,
  //   @required String programName,
  //   @required String programImagePath,
  //   @required String totalFunds,
  //   @required String fundRaised,
  // }) async {
  //   try {
  //     await _program.add({
  //       'programName': programName,
  //       'programDetail': programDetail,
  //       'programImagePath': programImagePath,
  //       'totalFunds': totalFunds,
  //       'fundRaised': fundRaised,
  //     });
  //     return 'berhasil';
  //   } catch (error) {
  //     return error.message;
  //   }
  // }

  static Stream<QuerySnapshot> getDonationProgram() {
    return _program.snapshots();
  }
}
