import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_app/core/errors/exception.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword({required String email, required String password}) async {
    try {
      final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      if(e.code == 'weak-password') {
        throw CustomException('كلمة المرور ضعيفة جدا');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('هذا البريد الالكتروني مستخدم من قبل');
      } else {
        throw CustomException(e.toString());
      }
    } catch (e) {
      throw CustomException('حدث خطأ ما. الرجاء المحاولة مرة أخرى.');
    }
  }
}