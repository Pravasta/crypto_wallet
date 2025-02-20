import 'package:crypto_wallet/features/auth/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'resend_otp_state.dart';

class ResendOtpCubit extends Cubit<ResendOtpState> {
  ResendOtpCubit(this._repository) : super(ResendOtpState());

  final AuthRepository _repository;

  void reSendOtp(String email) async {
    emit(state.copyWith(state: ResendOtpStateStatus.loading));
    try {
      final result = await _repository.reSendOtp(email);
      emit(state.copyWith(
        state: ResendOtpStateStatus.success,
        message: result,
      ));
    } catch (e) {
      emit(state.copyWith(
        state: ResendOtpStateStatus.error,
        message: e.toString(),
      ));
    }
  }
}
