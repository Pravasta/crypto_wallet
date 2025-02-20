import 'package:crypto_wallet/features/auth/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'verify_otp_sign_up_state.dart';

class VerifyOtpSignUpCubit extends Cubit<VerifyOtpSignUpState> {
  VerifyOtpSignUpCubit(this._repository) : super(VerifyOtpSignUpState());

  final AuthRepository _repository;

  void verifyOtpSignUp(String otp, String email) async {
    emit(state.copyWith(state: VerifyOtpSignUpStatus.loading));
    try {
      final result = await _repository.verifyOtpSignUp(otp, email);
      emit(state.copyWith(
        state: VerifyOtpSignUpStatus.success,
        message: result,
      ));
    } catch (e) {
      emit(state.copyWith(
        state: VerifyOtpSignUpStatus.error,
        message: e.toString(),
      ));
    }
  }
}
