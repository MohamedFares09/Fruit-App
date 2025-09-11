import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_app/features/auth/doman/repos/auth_repo.dart';
import 'package:fruits_app/features/auth/presentation/cubits/signup_cubit.dart/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;
  Future<void> createUserWithEmailAndPassword(
      {required String name,
      required String email,
      required String password}) async {
    emit(SignupLoadingState());
    final result =
        await authRepo.createUserWithEmailAndPassword(name, email, password);
    result.fold(
      (failure) => emit(SignupErrorState(failure.message)),
      (userEntity) => emit(SignupSuccessState(userEntity)),
    );
  }
}
