import 'package:crypto_wallet/data/model/request/login_request_model.dart';
import 'package:crypto_wallet/features/auth/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this._repository) : super(SignInState());

  final AuthRepository _repository;

  void signIn(LoginRequestModel data) async {
    emit(state.copyWith(state: SignInStateStatus.loading));
    try {
      final result = await _repository.signIn(data);
      emit(state.copyWith(
        state: SignInStateStatus.success,
        message: result,
      ));
    } catch (e) {
      emit(state.copyWith(
        state: SignInStateStatus.error,
        message: e.toString(),
      ));
    }
  }
}
