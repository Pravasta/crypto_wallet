part of 'resend_otp_cubit.dart';

enum ResendOtpStateStatus { initial, loading, error, success }

class ResendOtpState {
  final String message;
  final ResendOtpStateStatus state;

  ResendOtpState({
    this.message = '',
    this.state = ResendOtpStateStatus.initial,
  });

  ResendOtpState copyWith({
    String? message,
    ResendOtpStateStatus? state,
  }) {
    return ResendOtpState(
      message: message ?? this.message,
      state: state ?? this.state,
    );
  }
}
