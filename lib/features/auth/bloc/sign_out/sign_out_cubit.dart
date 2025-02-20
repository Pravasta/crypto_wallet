import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/auth_repository.dart' show AuthRepository;

part 'sign_out_state.dart';

class SignOutCubit extends Cubit<SignOutState> {
  SignOutCubit(this._repository) : super(SignOutState());

  final AuthRepository _repository;

  void signOut() async {
    emit(state.copyWith(state: SignOutStateStatus.loading));
    try {
      final result = await _repository.signOut();
      emit(state.copyWith(
        state: SignOutStateStatus.success,
        message: result,
      ));
    } catch (e) {
      emit(state.copyWith(
        state: SignOutStateStatus.error,
        message: e.toString(),
      ));
    }
  }
}
