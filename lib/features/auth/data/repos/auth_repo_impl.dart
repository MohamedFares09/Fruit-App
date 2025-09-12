import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_app/core/errors/exception.dart';
import 'package:fruits_app/core/errors/failuer.dart';
import 'package:fruits_app/core/services/firebase_auth_services.dart';
import 'package:fruits_app/features/auth/data/models/user_model.dart';
import 'package:fruits_app/features/auth/doman/entites/user_entites.dart';
import 'package:fruits_app/features/auth/doman/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;

  AuthRepoImpl(this.firebaseAuthServices);
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String name, String email, String password) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log("Exception AuthRepoImpl - createUserWithEmailAndPassword: $e and ");
      return left(ServerFailure("حدث خطأ ما. الرجاء المحاولة مرة أخرى."));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthServices.signInWithEmailAndPassword(
          email: email, password: password);
      return right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log("Exception AuthRepoImpl - signInWithEmailAndPassword: $e");
      return left(ServerFailure("حدث خطأ ما. الرجاء المحاولة مرة أخرى."));
    }
  }
}
