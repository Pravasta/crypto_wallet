part of 'verify_otp_sign_up_cubit.dart';

enum VerifyOtpSignUpStatus { initial, loading, error, success }

class VerifyOtpSignUpState {
  final String message;
  final VerifyOtpSignUpStatus state;

  VerifyOtpSignUpState({
    this.message = '',
    this.state = VerifyOtpSignUpStatus.initial,
  });

  VerifyOtpSignUpState copyWith({
    String? message,
    VerifyOtpSignUpStatus? state,
  }) {
    return VerifyOtpSignUpState(
      message: message ?? this.message,
      state: state ?? this.state,
    );
  }
}
