part of 'sign_out_cubit.dart';

enum SignOutStateStatus { initial, loading, success, error }

class SignOutState {
  final String message;
  final SignOutStateStatus state;

  SignOutState({
    this.message = '',
    this.state = SignOutStateStatus.initial,
  });

  SignOutState copyWith({
    String? message,
    SignOutStateStatus? state,
  }) {
    return SignOutState(
      message: message ?? this.message,
      state: state ?? this.state,
    );
  }
}
