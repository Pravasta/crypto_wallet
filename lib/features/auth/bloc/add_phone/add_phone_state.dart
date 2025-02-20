part of 'add_phone_cubit.dart';

enum AddPhoneStateStatus { initial, loading, error, success }

class AddPhoneState {
  final String message;
  final AddPhoneStateStatus state;

  AddPhoneState({
    this.message = '',
    this.state = AddPhoneStateStatus.initial,
  });

  AddPhoneState copyWith({
    String? message,
    AddPhoneStateStatus? state,
  }) {
    return AddPhoneState(
      message: message ?? this.message,
      state: state ?? this.state,
    );
  }
}
