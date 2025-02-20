import 'package:crypto_wallet/data/model/request/register_request_model.dart';
import 'package:crypto_wallet/features/auth/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._repository) : super(SignupState());

  final AuthRepository _repository;

  void signUp(RegisterRequestModel data) async {
    emit(state.copyWith(state: SignUpStateStatus.loading));
    try {
      final result = await _repository.signUp(data);

      emit(state.copyWith(
        state: SignUpStateStatus.success,
        message: result,
      ));
    } catch (e) {
      emit(state.copyWith(
        state: SignUpStateStatus.error,
        message: e.toString(),
      ));
    }
  }
}
