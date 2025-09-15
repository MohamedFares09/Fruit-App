import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruits_app/core/errors/exception.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthServices {
  Future<User> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception FirebaseAuthServices - createUserWithEmailAndPassword: ${e.code}");
      if (e.code == 'weak-password') {
        throw CustomException('كلمة المرور ضعيفة جدا');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException('هذا البريد الالكتروني مستخدم من قبل');
      } else if (e.code == 'invalid-email') {
        throw CustomException('البريد الالكتروني غير صالح');
      } else if (e.code == "network-request-failed") {
        throw CustomException('برجاء التحقق من اتصالك بالانترنت');
      } else if (e.code == "operation-not-allowed") {
        throw CustomException('تم تعطيل هذا الحساب. الرجاء الاتصال بالدعم.');
      } else {
        throw CustomException(e.toString());
      }
    } catch (e) {
      log("Exception FirebaseAuthServices - createUserWithEmailAndPassword: $e");
      throw CustomException('حدث خطأ ما. الرجاء المحاولة مرة أخرى.');
    }
  }

  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      log("Exception FirebaseAuthServices - signInWithEmailAndPassword: ${e.code}");
      if (e.code == 'user-not-found') {
        throw CustomException('. الرجاء التسجيل أولا');
      } else if (e.code == 'wrong-password') {
        throw CustomException('البريد الالكتروني او كلمة المرور غير صحيحة');
      } else if (e.code == 'invalid-email') {
        throw CustomException('البريد الالكتروني غير صالح');
      } else if (e.code == "network-request-failed") {
        throw CustomException('برجاء التحقق من اتصالك بالانترنت');
      } else if (e.code == "operation-not-allowed") {
        throw CustomException('تم تعطيل هذا الحساب. الرجاء الاتصال بالدعم.');
      } else if (e.code == "invalid-credential") {
        throw CustomException('البريد الالكتروني او كلمة المرور غير صحيحة');
      } else {
        throw CustomException(e.toString());
      }
    } catch (e) {
      log("Exception FirebaseAuthServices - signInWithEmailAndPassword: $e");
      throw CustomException('حدث خطأ ما. الرجاء المحاولة مرة أخرى.');
    }
  }

  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }
}
