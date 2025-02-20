import 'package:crypto_wallet/data/datasources/auth/auth_datasource.dart';
import 'package:crypto_wallet/data/model/request/login_request_model.dart';
import 'package:crypto_wallet/data/model/request/register_request_model.dart';

abstract class AuthRepository {
  Future<String> signUp(RegisterRequestModel data);
  Future<String> signIn(LoginRequestModel data);
  Future<String> signOut();
  Future<String> verifyOtpSignUp(String otp, String email);
  Future<String> reSendOtp(String email);
  Future<String> addPhone(String phoneNumber);
}

class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource _datasource;

  AuthRepositoryImpl({
    required AuthDatasource datasource,
  }) : _datasource = datasource;

  @override
  Future<String> signUp(RegisterRequestModel data) async {
    try {
      final execute = await _datasource.signUp(data);
      return execute;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<String> verifyOtpSignUp(String otp, String email) async {
    try {
      final execute = await _datasource.verifyOtpSignUp(otp, email);
      return execute;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<String> reSendOtp(String email) async {
    try {
      final execute = await _datasource.reSendOtp(email);
      return execute;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<String> addPhone(String phoneNumber) async {
    try {
      final execute = await _datasource.addPhone(phoneNumber);
      return execute;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<String> signIn(LoginRequestModel data) async {
    try {
      final execute = await _datasource.signIn(data);
      return execute;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  Future<String> signOut() async {
    try {
      final execute = await _datasource.signOut();
      return execute;
    } catch (e) {
      throw e.toString();
    }
  }

  factory AuthRepositoryImpl.create() {
    return AuthRepositoryImpl(
      datasource: AuthDatasourceImpl.create(),
    );
  }
}
