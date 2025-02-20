import 'package:crypto_wallet/features/auth/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_phone_state.dart';

class AddPhoneCubit extends Cubit<AddPhoneState> {
  AddPhoneCubit(this._repository) : super(AddPhoneState());

  final AuthRepository _repository;

  void addPhoneNumber(String phoneNumber) async {
    emit(state.copyWith(state: AddPhoneStateStatus.loading));

    try {
      final result = await _repository.addPhone(phoneNumber);
      emit(state.copyWith(
        state: AddPhoneStateStatus.success,
        message: result,
      ));
    } catch (e) {
      emit(state.copyWith(
        state: AddPhoneStateStatus.error,
        message: e.toString(),
      ));
    }
  }
}
