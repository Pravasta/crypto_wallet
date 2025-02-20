part of 'sign_in_cubit.dart';

enum SignInStateStatus { initial, loading, success, error }

class SignInState {
  final String message;
  final SignInStateStatus state;

  SignInState({
    this.message = '',
    this.state = SignInStateStatus.initial,
  });

  SignInState copyWith({
    String? message,
    SignInStateStatus? state,
  }) {
    return SignInState(
      message: message ?? this.message,
      state: state ?? this.state,
    );
  }
}
