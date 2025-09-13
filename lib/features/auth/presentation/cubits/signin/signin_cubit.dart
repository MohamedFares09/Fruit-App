import 'package:bloc/bloc.dart';
import 'package:fruits_app/features/auth/doman/repos/auth_repo.dart';
import 'package:meta/meta.dart';

import '../../../doman/entites/user_entites.dart';

part 'signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());
  final AuthRepo authRepo;
  Future<void> signin(String email, String password) async {
    emit(SigninLoadingState());
    final result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (l) => emit(SigninErrorState(l.message)),
      (r) => emit(SigninSuccessState(r)),
    );
  }
}
