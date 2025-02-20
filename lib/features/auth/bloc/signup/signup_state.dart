part of 'signup_cubit.dart';

enum SignUpStateStatus { initial, loading, success, error }

class SignupState {
  final String message;
  final SignUpStateStatus state;

  SignupState({
    this.message = '',
    this.state = SignUpStateStatus.initial,
  });

  SignupState copyWith({
    String? message,
    SignUpStateStatus? state,
  }) {
    return SignupState(
      message: message ?? this.message,
      state: state ?? this.state,
    );
  }
}
